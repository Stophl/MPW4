#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <time.h>
#include <unistd.h>
#include <string.h>
#include <errno.h>

#include <stdio.h>
#include <netdb.h>
#include <netinet/in.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/types.h>

#define MAX 80
#define PORT 8080
#define SA struct sockaddr


#define  AXI_IIC_ADDR 0x41600000
#define  AXI_IIC_WB_ADDR 0x41610000
#define  AXI_CTRL_REG 0x43C50000
#define AXI_CTRL1_REG 0x43C10000
#define AXI_CTRL2_REG 0x43C20000
#define AXI_CTRL3_REG 0x43C70000
#define AXI_CTRL4_REG 0x43C80000
#define AXI_STAT0_REG 0x43C30000
#define AXI_STAT1_REG 0x41200000
#define AXI_STAT2_REG 0x41210000
#define AXI_STAT3_REG 0x41220000
#define      AXI_FIFO 0x43C60000
#define     AXI_FIFO1 0x43C40000
#define AXI_REG_ARRAY 0x43C90000

//#define ChipBoard_I2Caddr 0x47
//#define PiggyBoard_I2Caddr 0x41

#define ChipBoard_I2Caddr 0x41
#define PiggyBoard_I2Caddr 0x47





/************ PROTOTYPES ***************/
int CARwrite_DAC7678_channel( int I2Caddr, int channel_nr, int Val_12bit );
int CARread_DAC7678_channel( int I2Caddr, int channel_nr);
double CARread_INA226_voltage( int I2Caddr, int register_nr);
int CARread_INA226( int I2Caddr, int register_nr);
double CARwrite_INA226( int I2Caddr, int register_nr, int HByte, int LByte);
double chipboard_read_MAX1161x( int I2Caddr, int ChipSelect);
double chipboard_read_MAX1161x_VNCOMP_FE(int I2Caddr);
void cfg_PC_send_1();
void cfg_PC_send_0();
void cfg_FE_send_1();
void cfg_FE_send_0();
void SI5345_REVB_config();
void init_SFP();

void cfg_matrix(  int CHIP_ADDR, unsigned long EOCreg_Sub_addr, unsigned long PIXreg_Sub_addr, int LD_switch, int*PixReg_array);
void slow_control(  int CHIP_ADDR, unsigned long Sub_addr,  int data );
void bin(unsigned n);




/************** gLobal ********************/
unsigned page_addr, page_offset;
unsigned IIC_page_addr,IIC_page_offset;
unsigned IIC_WB_page_addr,IIC_WB_page_offset;
unsigned CTRL_page_addr,CTRL_page_offset;
unsigned CTRL1_page_addr,CTRL1_page_offset;
unsigned CTRL2_page_addr,CTRL2_page_offset;
unsigned CTRL3_page_addr,CTRL3_page_offset;
unsigned CTRL4_page_addr,CTRL4_page_offset;
unsigned status0_in_page_addr,status0_in_page_offset;
unsigned status1_in_page_addr,status1_in_page_offset;
unsigned status2_in_page_addr,status2_in_page_offset;
unsigned status3_in_page_addr,status3_in_page_offset;
unsigned FIFO_page_addr,FIFO_page_offset;
unsigned FIFO1_page_addr,FIFO1_page_offset;
unsigned selfconfread_rowcol;
unsigned AXI_REG_ARRAY_page_addr,  AXI_REG_ARRAY_page_offset;



void *ptr,*IIC_ptr, *CTRL_ptr, *CTRL1_ptr, *CTRL2_ptr, *CTRL3_ptr, *CTRL4_ptr,*status0_ptr,*status1_ptr,*status2_ptr, *status3_ptr;
void *FIFO_ptr, *FIFO1_ptr, *IIC_WB_ptr, *AXI_REG_ARRAY_ptr;

unsigned int IIC_status_register,IIC_control_register, IIC_interrup_status_reg, IIC_RX_fifo;
int sequ_pc[148];

unsigned int config_word_a,config_word_b,config_word_c,config_word_d,config_word_e;


int cnt_pc_row[26];
int cnt_pc_col[52];

int trimdac[8][8];
int trimdac1[8][8];
int trimdac2[8][8];
int tr[8][8];

int td[32][128];
int td_p[32][128];

int delay[32][4];

unsigned long testdata[36];

time_t cpu_time, cpu_time_pedge, cpu_time_nedge;



static const unsigned char BitReverseTable256[] =
{
  0x00, 0x80, 0x40, 0xC0, 0x20, 0xA0, 0x60, 0xE0, 0x10, 0x90, 0x50, 0xD0, 0x30, 0xB0, 0x70, 0xF0,
  0x08, 0x88, 0x48, 0xC8, 0x28, 0xA8, 0x68, 0xE8, 0x18, 0x98, 0x58, 0xD8, 0x38, 0xB8, 0x78, 0xF8,
  0x04, 0x84, 0x44, 0xC4, 0x24, 0xA4, 0x64, 0xE4, 0x14, 0x94, 0x54, 0xD4, 0x34, 0xB4, 0x74, 0xF4,
  0x0C, 0x8C, 0x4C, 0xCC, 0x2C, 0xAC, 0x6C, 0xEC, 0x1C, 0x9C, 0x5C, 0xDC, 0x3C, 0xBC, 0x7C, 0xFC,
  0x02, 0x82, 0x42, 0xC2, 0x22, 0xA2, 0x62, 0xE2, 0x12, 0x92, 0x52, 0xD2, 0x32, 0xB2, 0x72, 0xF2,
  0x0A, 0x8A, 0x4A, 0xCA, 0x2A, 0xAA, 0x6A, 0xEA, 0x1A, 0x9A, 0x5A, 0xDA, 0x3A, 0xBA, 0x7A, 0xFA,
  0x06, 0x86, 0x46, 0xC6, 0x26, 0xA6, 0x66, 0xE6, 0x16, 0x96, 0x56, 0xD6, 0x36, 0xB6, 0x76, 0xF6,
  0x0E, 0x8E, 0x4E, 0xCE, 0x2E, 0xAE, 0x6E, 0xEE, 0x1E, 0x9E, 0x5E, 0xDE, 0x3E, 0xBE, 0x7E, 0xFE,
  0x01, 0x81, 0x41, 0xC1, 0x21, 0xA1, 0x61, 0xE1, 0x11, 0x91, 0x51, 0xD1, 0x31, 0xB1, 0x71, 0xF1,
  0x09, 0x89, 0x49, 0xC9, 0x29, 0xA9, 0x69, 0xE9, 0x19, 0x99, 0x59, 0xD9, 0x39, 0xB9, 0x79, 0xF9,
  0x05, 0x85, 0x45, 0xC5, 0x25, 0xA5, 0x65, 0xE5, 0x15, 0x95, 0x55, 0xD5, 0x35, 0xB5, 0x75, 0xF5,
  0x0D, 0x8D, 0x4D, 0xCD, 0x2D, 0xAD, 0x6D, 0xED, 0x1D, 0x9D, 0x5D, 0xDD, 0x3D, 0xBD, 0x7D, 0xFD,
  0x03, 0x83, 0x43, 0xC3, 0x23, 0xA3, 0x63, 0xE3, 0x13, 0x93, 0x53, 0xD3, 0x33, 0xB3, 0x73, 0xF3,
  0x0B, 0x8B, 0x4B, 0xCB, 0x2B, 0xAB, 0x6B, 0xEB, 0x1B, 0x9B, 0x5B, 0xDB, 0x3B, 0xBB, 0x7B, 0xFB,
  0x07, 0x87, 0x47, 0xC7, 0x27, 0xA7, 0x67, 0xE7, 0x17, 0x97, 0x57, 0xD7, 0x37, 0xB7, 0x77, 0xF7,
  0x0F, 0x8F, 0x4F, 0xCF, 0x2F, 0xAF, 0x6F, 0xEF, 0x1F, 0x9F, 0x5F, 0xDF, 0x3F, 0xBF, 0x7F, 0xFF
};


static const unsigned char COL_reordered[] =
{
  0x02, 0x01, 0x00, 0x4d, 0x4c, 0x4b, 0x4a, 0x49, 0x48, 0x47, 0x46, 0x45, 0x44, 0x43, 0x42, 0x41,
  0x40, 0x3f, 0x3e, 0x3d, 0x3c, 0x3b, 0x3a, 0x39, 0x38, 0x37, 0x36, 0x35, 0x34, 0x33, 0x32, 0x31,
  0x30, 0x2f, 0x2e, 0x2d, 0x2c, 0x2b, 0x2a, 0x29, 0x28, 0x27, 0x26, 0x25, 0x24, 0x23, 0x22, 0x21,
  0x20, 0x1f, 0x1e, 0x1d, 0x1c, 0x1b, 0x1a, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
  0x10, 0x0f, 0x0e, 0x0d, 0x0c, 0x0b, 0x0a, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
};



int main()
{
	unsigned page_size=sysconf(_SC_PAGESIZE); //?

	int i,j,l,fd,MSDB,LSDB,temp,temp_int,temp_frag,s,sa,th_pc,row,col,vt50,pixel_octet,dcol,bit;
	int g_bitslip_base, g_window_center_base;
	char str[10], input;
	//char input;
    double temp_float;

    int ENINJ[32][16];
    int ENSFOUT[32][16];
	int TDAC[32][16][4];
	int MASK[32][16];
	int ENHB[32][16];

	unsigned long EOCreg_Sub_addr;
	unsigned long PIXreg_Sub_addr;
	int LD_switch;

	int PixReg[16];

	unsigned long int d,data,file_data,index,k[256],shutter_length,trig_delay, s_old, s_new,TLU_tst, TS_ovfl, TLU_tst_MSBs, TS_ovfl_MSBs;
	char str_buf[50],TCP_char_buf[800],pxd;
	FILE* config_data;
	FILE* heatmap_data;
	FILE* heatmap_piggy;
    FILE* counting_data;
    FILE* s_curve_data;
    FILE* ADC_data;
    FILE* TOTcnt_data;
    FILE* fp;
    FILE* TD_data;
    FILE* TD_base;
    FILE* TD_piggy;


	short a,b,sc,sd,low,high;

    unsigned int value = 0;
    unsigned int val1 = 0;

    int CHIP_ADDR = ChipBoard_I2Caddr;

    printf("\033[H\033[J");// clear terminal screen


       // read config file //////////////////////////////////////////////
       config_data=fopen("//home//root/config_MPW2.txt","r");
       for (j=0;j<256;j++) {
         fscanf(config_data,"%3ld%5ld%[^\n]\n",&index,&data,str_buf); //printf("%s\n", str_buf);
         k[index]=data;
       }
       fclose(config_data);
       //for (j=0;j<256;j++) printf("%3d %5ld \n", j,k[j]); /////////////

       // read TD_data file //////////////////////////////////////////////
       TD_data=fopen("//home//root/TD0os.txt","r");
       for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[0][i]=data; }
       fclose(TD_data);

       TD_data=fopen("//home//root/TD1os.txt","r");
       for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[1][i]=data; }
       fclose(TD_data);

       TD_data=fopen("//home//root/TD2os.txt","r");
	   for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[2][i]=data; }
	   fclose(TD_data);

	   TD_data=fopen("//home//root/TD3os.txt","r");
       for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[3][i]=data; }
       fclose(TD_data);

       TD_data=fopen("//home//root/TD4os.txt","r");
       for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[4][i]=data; }
       fclose(TD_data);

       TD_data=fopen("//home//root/TD5os.txt","r");
	   for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[5][i]=data; }
	   fclose(TD_data);

	   TD_data=fopen("//home//root/TD6os.txt","r");
	   for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[6][i]=data; }
	   fclose(TD_data);

       TD_data=fopen("//home//root/TD7os.txt","r");
       for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[7][i]=data; }
       fclose(TD_data);

       TD_data=fopen("//home//root/TD8os.txt","r");
       for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[8][i]=data; }
       fclose(TD_data);

       TD_data=fopen("//home//root/TD9os.txt","r");
       for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[9][i]=data; }
       fclose(TD_data);

       TD_data=fopen("//home//root/TD10os.txt","r");
       for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[10][i]=data; }
       fclose(TD_data);

       TD_data=fopen("//home//root/TD11os.txt","r");
       for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[11][i]=data; }
       fclose(TD_data);

       TD_data=fopen("//home//root/TD12os.txt","r");
       for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[12][i]=data; }
       fclose(TD_data);

       TD_data=fopen("//home//root/TD13os.txt","r");
       for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[13][i]=data; }
       fclose(TD_data);

       TD_data=fopen("//home//root/TD14os.txt","r");
       for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[14][i]=data; }
       fclose(TD_data);

       TD_data=fopen("//home//root/TD15os.txt","r");
       for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[15][i]=data; }
       fclose(TD_data);

       TD_data=fopen("//home//root/TD16os.txt","r");
       for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[16][i]=data; }
       fclose(TD_data);

       TD_data=fopen("//home//root/TD17os.txt","r");
       for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[17][i]=data; }
       fclose(TD_data);

       TD_data=fopen("//home//root/TD18os.txt","r");
       for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[18][i]=data; }
       fclose(TD_data);

       TD_data=fopen("//home//root/TD19os.txt","r");
       for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[19][i]=data; }
       fclose(TD_data);

       TD_data=fopen("//home//root/TD20os.txt","r");
       for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[20][i]=data; }
       fclose(TD_data);

       TD_data=fopen("//home//root/TD21os.txt","r");
       for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[21][i]=data; }
       fclose(TD_data);

       TD_data=fopen("//home//root/TD22os.txt","r");
       for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[22][i]=data; }
       fclose(TD_data);

       TD_data=fopen("//home//root/TD23os.txt","r");
       for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[23][i]=data; }
       fclose(TD_data);

       TD_data=fopen("//home//root/TD24os.txt","r");
       for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[24][i]=data; }
       fclose(TD_data);

       TD_data=fopen("//home//root/TD25os.txt","r");
       for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[25][i]=data; }
       fclose(TD_data);

       TD_data=fopen("//home//root/TD26os.txt","r");
       for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[26][i]=data; }
       fclose(TD_data);

       TD_data=fopen("//home//root/TD27os.txt","r");
       for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[27][i]=data; }
       fclose(TD_data);

       TD_data=fopen("//home//root/TD28os.txt","r");
       for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[28][i]=data; }
       fclose(TD_data);

       TD_data=fopen("//home//root/TD29os.txt","r");
       for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[29][i]=data; }
       fclose(TD_data);

       TD_data=fopen("//home//root/TD30os.txt","r");
       for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[30][i]=data; }
       fclose(TD_data);

       TD_data=fopen("//home//root/TD31os.txt","r");
       for (i=0;i<128;i++) { fscanf(TD_data,"%2ld%[^\n]\n",&data,str_buf); td[31][i]=data; }
       fclose(TD_data);






       //for (j=0;j<128;j++) printf("%3d %5d \n", j,td[0][j]); /////////////



    /* Open /dev/mem file */
    fd = open ("/dev/mem", O_RDWR);
    if (fd < 1) {
      perror(" /dev/mem open failed ");
      return -1;
    }



	/* mmap the device into memory */
	IIC_page_addr = (AXI_IIC_ADDR & (~(page_size-1)));
	IIC_page_offset = AXI_IIC_ADDR - IIC_page_addr;
	IIC_ptr = mmap(NULL, page_size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, IIC_page_addr);

	/* mmap the device into memory */
	IIC_WB_page_addr = (AXI_IIC_WB_ADDR & (~(page_size-1)));
	IIC_WB_page_offset = AXI_IIC_WB_ADDR - IIC_WB_page_addr;
	IIC_WB_ptr = mmap(NULL, page_size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, IIC_WB_page_addr);

	/* mmap the device into memory */
	CTRL_page_addr = (AXI_CTRL_REG & (~(page_size-1)));
	CTRL_page_offset = AXI_CTRL_REG - CTRL_page_addr;
	CTRL_ptr = mmap(NULL, page_size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, CTRL_page_addr);

	/* mmap the device into memory */
	CTRL1_page_addr = (AXI_CTRL1_REG & (~(page_size-1)));
	CTRL1_page_offset = AXI_CTRL1_REG - CTRL1_page_addr;
	CTRL1_ptr = mmap(NULL, page_size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, CTRL1_page_addr);

	/* mmap the device into memory */
	CTRL2_page_addr = (AXI_CTRL2_REG & (~(page_size-1)));
	CTRL2_page_offset = AXI_CTRL2_REG - CTRL2_page_addr;
	CTRL2_ptr = mmap(NULL, page_size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, CTRL2_page_addr);

	/* mmap the device into memory */
	CTRL3_page_addr = (AXI_CTRL3_REG & (~(page_size-1)));
	CTRL3_page_offset = AXI_CTRL3_REG - CTRL3_page_addr;
	CTRL3_ptr = mmap(NULL, page_size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, CTRL3_page_addr);

	/* mmap the device into memory */
	CTRL4_page_addr = (AXI_CTRL4_REG & (~(page_size-1)));
	CTRL4_page_offset = AXI_CTRL4_REG - CTRL4_page_addr;
	CTRL4_ptr = mmap(NULL, page_size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, CTRL4_page_addr);

	/* mmap the device into memory */
	status0_in_page_addr = (AXI_STAT0_REG & (~(page_size-1)));
	status0_in_page_offset = AXI_STAT0_REG - status0_in_page_addr;
	status0_ptr = mmap(NULL, page_size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, status0_in_page_addr);

	/* mmap the device into memory */
	status1_in_page_addr = (AXI_STAT1_REG & (~(page_size-1)));
	status1_in_page_offset = AXI_STAT1_REG - status1_in_page_addr;
	status1_ptr = mmap(NULL, page_size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, status1_in_page_addr);

	/* mmap the device into memory */
	status2_in_page_addr = (AXI_STAT2_REG & (~(page_size-1)));
	status2_in_page_offset = AXI_STAT2_REG - status2_in_page_addr;
	status2_ptr = mmap(NULL, page_size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, status2_in_page_addr);

	/* mmap the device into memory */
	status3_in_page_addr = (AXI_STAT3_REG & (~(page_size-1)));
	status3_in_page_offset = AXI_STAT3_REG - status3_in_page_addr;
	status3_ptr = mmap(NULL, page_size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, status3_in_page_addr);

	/* mmap the device into memory */
	FIFO_page_addr = (AXI_FIFO & (~(page_size-1)));
	FIFO_page_offset = AXI_FIFO - FIFO_page_addr;
	FIFO_ptr = mmap(NULL, page_size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, FIFO_page_addr);

	/* mmap the device into memory */
	FIFO1_page_addr = (AXI_FIFO1 & (~(page_size-1)));
    FIFO1_page_offset = AXI_FIFO1 - FIFO1_page_addr;
	FIFO1_ptr = mmap(NULL, page_size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, FIFO1_page_addr);



	/* mmap the device into memory */
	AXI_REG_ARRAY_page_addr = (AXI_REG_ARRAY & (~(page_size-1)));
	AXI_REG_ARRAY_page_offset = AXI_REG_ARRAY - AXI_REG_ARRAY_page_addr;
	AXI_REG_ARRAY_ptr = mmap(NULL, page_size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, AXI_REG_ARRAY_page_addr);

	//disable UDP data taking  clears package counter
	*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x0;

	//set IP SRC addr:  default x"c0_a8_c9_0" & "00" & dip_switches_4bits_tri_i(3 downto 2),  => 192.168.201.0+dip_switches
	// *((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = 0xc0a8c91; // 28MSBs
	   *((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = 0x0000000; // 28MSBs


	   // ********************************************************************************** TCP/IP test �ber 192.168.130.6

//	                      	    struct sockaddr_in servaddr, cli;
//
//	                      	    // socket create and verification
//	                      	    int sockfd = socket(AF_INET, SOCK_STREAM, 0);
//	                      	    if (sockfd == -1) {
//	                      	        printf("socket creation failed...\n");
//	                      	        exit(0);
//	                      	    }
//	                      	    else
//	                      	        printf("Socket successfully created..\n");
//	                      	    bzero(&servaddr, sizeof(servaddr));
//
//	                      	    // assign IP, PORT
//	                      	    servaddr.sin_family = AF_INET;
//	                      	    servaddr.sin_addr.s_addr = htonl(INADDR_ANY);
//	                      	    servaddr.sin_port = htons(PORT);
//
//	                      	    // Binding newly created socket to given IP and verification
//	                      	    if ((bind(sockfd, (SA*)&servaddr, sizeof(servaddr))) != 0) {
//	                      	        printf("socket bind failed...\n");
//	                      	        exit(0);
//	                      	    }
//	                      	    else
//	                      	        printf("Socket successfully binded..\n");
//
//	                      	    // Now server is ready to listen and verification
//	                      	    if ((listen(sockfd, 5)) != 0) {
//	                      	        printf("Listen failed...\n");
//	                      	        exit(0);
//	                      	    }
//	                      	    else
//	                      	        printf("Server listening..\n");
//	                      	    int len = sizeof(cli);
//
//
//
//
//
//
//
//	                      	    int connfd = accept(sockfd, (SA*)&cli, &len);
//								if (connfd < 0) {
//									printf("server accept failed...\n");
//									exit(0);
//								}
//								else
//									printf("server accept the client...\n");
//



	// ***************************************************************************************




    //-------------------------------------------------
    init_SFP(); // configures SI570 and RTCSi5321
    SI5345_REVB_config(); // clock jitter cleaner
    //-------------------------------------------------


    input = 0;
    while ((char) input != '0')
      {
        printf("\n\n-- MPW3_ Test -----+--------------------------------\n\n");
        printf("(1) set I2Cmux, read CAR board temperature\n");
        printf("(2) PowerOn\n");
        printf("(3) Set Bias Voltages _ Configure PC\n");
        printf("(4) PowerOff\n");
        printf("(5) read SI5345 registers\n");
        printf("(6) read INA226 voltages\n");
        printf("(7) test thresh\n");
        printf("(8) send INJ pulse\n");
        printf("\n");
        printf("(9) read MPW1_chipboard voltages\n");
        printf("(a) read MPW1_chipboard EEPROM\n");
        printf("(b) read MPW1_chipboard TEMP\n");
        printf("\n");
        printf("(c) TLU_CONT start shutter\n");
        printf("(d) Bias Voltages Plots\n");

        printf("\n");
        printf("(e) test  ABUFF_OUT\n");
        printf("(k) hitmap\n");
        printf("\n");
        printf("(l) set  IDEL SIN, SIN1\n");
        printf("(m) send TestPattern SIN, SIN1\n");
        printf("(o) push UDP package\n");
        printf("(p) scan Phase\n");

        printf("\n");
        printf("(n) noise trimming\n");

        printf("(r) open shutter\n");
        printf("(s) S_curve\n");

        printf("(u) init SI5345, ADC9249 and AMUX\n");
        printf("(t) read CAR ADC9249\n");

        printf("(w) wbc/rbc\n");

        printf("\n");

        printf("(x) TD cal BASE   \n");
        printf("(y) TD cal PIGGY  \n");
        printf("(z) MPW3 HeatMap ( open Shutter ) \n");

        printf("\n\n\n");
        printf("(0) EXIT\n\n");

        scanf("%s",&str[0]);

        //scanf("%c%*[^\n]%*c",&input);
        //fgets(str,10,stdin);
        input = str[0];

        switch(input)
            {
              case'0':  break;
              case'1':  {


            	  	  	  //***************************** init AXI IIC ; set I2Cmux on ZC706 to FMC_HPC; enable all four ports on CAR board I2Cmux *******************************//

				 		  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x120)) = 0x0f; // set IIC RX_FIFO DEPTH to max 0xf
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x02; // reset IIC TX_FIFO
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x01; // enable AXI IIC

						  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); printf("I2C status reg after init: %x\n",IIC_status_register);

						  printf("set I2Cmux on ZC706 to FMC HPC ... \n");
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x74<<1)); // U65 ZC706 I2Cmux
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x20); 		// enable II2C FMC HPC
						  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free

						  usleep(200);



						  // --- temperature TMP101 --------------------------------------------------------------------------------------

						  printf("\n enable CAR I2Cmux I2C0 ... \n");
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1));
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01);
						  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);


						  // ---write TMP101 configuration register

						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x4a<<1));     	// start write
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);  	    			// configuration register
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0xa4);  			        // set config bits
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x00);  			// STOP
						  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

						  // ---read back TMP101 configuration register
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x4a<<1));     	// start write
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);  	    			// configuration register
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x4a<<1))+1; 		// repeated start read
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01);  			// STOP read 1 byte
						  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0x88);

						  MSDB = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c)); // printf("   configuration register= %x\n",MSDB);
						  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc8);

						  // ---read temperature register

						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x4a<<1));     	// start write
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x00);  	    			// temperature register
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x4a<<1))+1; 		// repeated start read
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x02);  			// STOP read 2 bytes
						  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); /*printf("I2C status reg after start: %x\n",IIC_status_register);*/ }while (IIC_status_register != 0x88);

						  MSDB = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));   LSDB = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
						  temp=(( (MSDB<<4) + (LSDB>>4))>>2);   printf("        CAR board temperature = %5.2f%cC\n",temp*0.25,186);
                          do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc8);

						  // -----------------------------------------------------------------------------------------------------------------

  //gives 0xff ???		  //read Board ID://///////////////////////////////////////////////////////////////////////////////////////////

						  printf("\n enable CAR I2Cmux I2C0 ... \n");
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01);
						  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);


						  //select start register for read
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x50<<1));     //write
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x0;  	    			//start address byte low
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x0;  	    			//start address byte high
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(0x50<<1))+1); //repeated start read
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01);  		//STOP read 1 bytes

						  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); /*printf("I2C status reg after start: %x\n",IIC_status_register);*/ }while (IIC_status_register != 0x88);

						  IIC_RX_fifo = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));  printf("   Board ID reg0: %x\n",IIC_RX_fifo);

						  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc8);
					      /////////////////////////////////////////////////////////////////////////////////////////////////////////////

						  if (IIC_RX_fifo == 0x0b) {
							  printf("\n CAR Board V1.4 detected ... \n");

							  // set SEAF_CMOS_OUT_1_to_12_VCC
							  printf("\n enable CAR I2Cmux I2C0 ... \n");
							  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01);
							  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

							  printf("set SEAF_CMOS_OUT_1_to_4_VCC ..\n"); 	CARwrite_DAC7678_channel( 0x48, 0x04, 1800); usleep(200);
							  printf("set SEAF_CMOS_OUT_5_to_8_VCC ..\n"); 	CARwrite_DAC7678_channel( 0x48, 0x06, 1800); usleep(200);
							  printf("set SEAF_CMOS_OUT_9_to_12_VCC ..\n"); 	CARwrite_DAC7678_channel( 0x48, 0x01, 1800); usleep(200);


							  // ********************************************************************************************************************************************************//
							  printf("\n");
							  //configure as inputs PCA9539 U31 CARv1.4
							 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x75<<1));
							 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x06);  //configuration port 0
							 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0xff);  //port 0 all inputs
							 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0xff); ////port 1 all inputs
							 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free



							 //select start PCA9539register for read
							  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x75<<1));     //write
							  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 +0x00);   //STOP + command byte
							  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free

							  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(0x75<<1))+1); //start read
							  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x04);  		//STOP read 4 bytes

							  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); /*printf("I2C status reg after start: %x\n",IIC_status_register);*/ }while (IIC_status_register != 0x88);

							  for (i=0;i<4;i++) { IIC_RX_fifo = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));  printf("   PCA9539 CARv1.4 Power_alert Port0:%x\n",IIC_RX_fifo);}

							  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc8);




							  //select start PCA9539register for read
							  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x75<<1));     //write
							  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 +0x01);   //STOP + command byte
							  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free


							  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(0x75<<1))+1); //repeated start read
							  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01);  		//STOP read 1 bytes

							  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); /*printf("I2C status reg after start: %x\n",IIC_status_register);*/ }while (IIC_status_register != 0x88);

							  IIC_RX_fifo = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));  printf("   PCA9539 CARv1.4 Power_alert Port1:%x\n",IIC_RX_fifo);

							  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc8);


							  printf("\n");
							  // ********************************************************************************************************************************************************//
						    }  else  printf("\n CAR Board V1.1 detected ... \n");


						  *((unsigned int*)(AXI_REG_ARRAY_ptr + AXI_REG_ARRAY_page_offset+0x00)) = 0x0;    //s_reg_a_out
						  *((unsigned int*)(AXI_REG_ARRAY_ptr + AXI_REG_ARRAY_page_offset+0x04)) = 0x0;    //s_reg_b_out
						  *((unsigned int*)(AXI_REG_ARRAY_ptr + AXI_REG_ARRAY_page_offset+0x08)) = 0x0;    //s_reg_c_out
					      *((unsigned int*)(AXI_REG_ARRAY_ptr + AXI_REG_ARRAY_page_offset+0x0c)) = 0x0;    //s_reg_d_out
                          usleep(100);
                          *((unsigned int*)(AXI_REG_ARRAY_ptr + AXI_REG_ARRAY_page_offset+0x00)) = 0x3;    //s_reg_a_out
						  *((unsigned int*)(AXI_REG_ARRAY_ptr + AXI_REG_ARRAY_page_offset+0x04)) = 0x1;    //s_reg_b_out
						  *((unsigned int*)(AXI_REG_ARRAY_ptr + AXI_REG_ARRAY_page_offset+0x08)) = 0x1;    //s_reg_c_out
						  *((unsigned int*)(AXI_REG_ARRAY_ptr + AXI_REG_ARRAY_page_offset+0x0c)) = 0x1;    //s_reg_d_out
						  usleep(100);
						  *((unsigned int*)(AXI_REG_ARRAY_ptr + AXI_REG_ARRAY_page_offset+0x00)) = 0x1;    //s_reg_a_out
						  *((unsigned int*)(AXI_REG_ARRAY_ptr + AXI_REG_ARRAY_page_offset+0x04)) = 0x1;    //s_reg_b_out
						  *((unsigned int*)(AXI_REG_ARRAY_ptr + AXI_REG_ARRAY_page_offset+0x08)) = 0x0;    //s_reg_c_out
						  *((unsigned int*)(AXI_REG_ARRAY_ptr + AXI_REG_ARRAY_page_offset+0x0c)) = 0x0;    //s_reg_d_out


						  d=*((unsigned int *)(AXI_REG_ARRAY_ptr + AXI_REG_ARRAY_page_offset+0x00)); printf("%08x\n",d);
						  d=*((unsigned int *)(AXI_REG_ARRAY_ptr + AXI_REG_ARRAY_page_offset+0x04)); printf("%08x\n",d);


                        };break;




             case'2':  {

            	         printf("\n set MPW3 power voltages... \n");
            	 	 	 printf("enable CAR I2Cmux I2C3 ... \n");
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x08); 		// enable 3
						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
						 usleep(200);

						 printf("\n\nPCA9539: \n");
						 //set vadj     P1V8_VDDD P1V8_VDD_IO  P1V8_BG_VDD
						 printf("set PWR_ADJ_1  P1V8_VDDA     ..\n"); 	CARwrite_DAC7678_channel( 0x49, 0x00, 1800); usleep(200); //3600mV -PWR_ADJ
						 printf("set PWR_ADJ_2  P1V3_VSSA     ..\n"); 	CARwrite_DAC7678_channel( 0x49, 0x02, 2300); usleep(200);
						 printf("set PWR_ADJ_3  P1V8_VDDC     ..\n"); 	CARwrite_DAC7678_channel( 0x49, 0x04, 1800); usleep(200);
						 printf("set PWR_ADJ_4  P1V8_VDD!     ..\n"); 	CARwrite_DAC7678_channel( 0x49, 0x06, 1800); usleep(200);//CARwrite_DAC7678_channel( 0x49, 0x06, 1775); usleep(200);
						 printf("set PWR_ADJ_5  P3V3D         ..\n"); 	CARwrite_DAC7678_channel( 0x49, 0x01,  300); usleep(200);
						 printf("set PWR_ADJ_6  P1V8_NW_RING  ..\n"); 	CARwrite_DAC7678_channel( 0x49, 0x03, 1800); usleep(200);
						 printf("set PWR_ADJ_7  P1V8_VSENSBIAS..\n"); 	CARwrite_DAC7678_channel( 0x49, 0x05, 1800); usleep(200);
						 printf("set PWR_ADJ_8  P2V5D         ..\n"); 	CARwrite_DAC7678_channel( 0x49, 0x07, 1100); usleep(200);
						 printf("\n");

						 printf("\n enable CAR I2Cmux I2C0 ... \n");
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01); 		// enable 0
						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
						 usleep(200);

						 //configure as outputs PCA9539 U15 CAR
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x76<<1));
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x06);  //configuration port 0
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x00);  //port 0 all outputs
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x00); ////port 1 all outputs
						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free

						 //set outputs PCA9539 U15 CAR
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x76<<1));
			 			 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x02);  //configuration port 0
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x00);  //P00 .. P07 = 0
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0xff); //P10..P17 = 1
						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free

						 printf("\n set MPW3 BIAS voltages... \n");
						 printf("enable CAR I2Cmux I2C3 ... \n");
						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x08); 		// enable 3


						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free


						 printf("set Bias_1 -> DEL_HI     ...\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x00, 700); usleep(200);
						 printf("set Bias_2 -> TH         ...\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x02, 1200); usleep(200); //1250
						 printf("set Bias_3 -> DEL_LO     ...\n"); 	    CARwrite_DAC7678_channel( 0x4a, 0x04, 900); usleep(200);
						 printf("set Bias_4 -> BL         ...\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x06, 900); usleep(200);

						 //set INJ voltage
						 CARwrite_DAC7678_channel( 0x4f, 0x06, 1800);  //INJ1
						 CARwrite_DAC7678_channel( 0x4f, 0x04, 1800);  //INJ2


//						 printf("\n");
//                        //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//
//						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
//
//						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
//						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01); 		// enable 0
//						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
//						 usleep(200);
//
//						 //configure as outputs PCA9539 U15 CAR
//						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x76<<1));
//						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x06);  //configuration port 0
//						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x00);  //port 0 all outputs
//						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x00); ////port 1 all outputs
//						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
//
//						 //set outputs PCA9539 U15 CAR
//						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x76<<1));
//						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x02);  //configuration port 0
//						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x00);  //P00 .. P07 = 0
//						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0xff); //P10..P17 = 1
//						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
//
//						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
//						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
//						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x08); 		// enable 3
//
//
//						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
//
//
//						 //set IP SRC addr:  default x"c0_a8_c9_0" & "00" & dip_switches_4bits_tri_i(3 downto 2),  => 192.168.201.0+dip_switches


						 printf("\n enable CAR I2Cmux I2C1 ... \n");
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x02); 		// enable 1
						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); printf("I2C status 1 start: %x\n",IIC_status_register); usleep(200);}while (IIC_status_register != 0xc0);
						 usleep(200);

						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(0x71<<1))+1); //read
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01);  			//STOP read 1 byte
						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); printf("I2C status 2 start: %x\n",IIC_status_register);usleep(200); }while (IIC_status_register != 0x88);

						 MSDB = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));  printf("               I2Cmux: %x\n",MSDB);

						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc8);


						 printf("\n Set SOL Power_OUT_3 ... \n");
						 CARwrite_INA226( 0x42, 0x00, 0x40, 0x25); // Configuration Register
						 CARwrite_INA226( 0x42, 0x06, 0x80, 0x01); // Mask Enable Register SOL Shunt Voltage Over-Voltage ( Bit 15 = 1 ) Alert LEN Latch enable ( Bit 0 =1 )
						 //CARwrite_INA226( 0x42, 0x07, 0x04, 0x00); // set Limit 250mA
						 CARwrite_INA226( 0x42, 0x07, 0x03, 0x80); // set Limit 200mA

						 printf("%0x\n",CARread_INA226( 0x42, 0x01));
						 printf("%0x\n",CARread_INA226( 0x42, 0x00));
						 printf("%0x\n",CARread_INA226( 0x42, 0x06));
						 printf("%0x\n",CARread_INA226( 0x42, 0x07));



						 printf("\n\n EXT RESET:");
						  *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0x40000000; //EXT_RESET = 1
						  *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0x00000000; //EXT_RESET = 0

						  *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0x80000000; //EXT_AUX_RESET = 1
						  *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0x00000000; //EXT_AUX_RESET = 0

						 printf("\n disable CAR I2Cmux I2C1 ... \n");
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x00); 		// disable all
						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); printf("I2C status reg after start: %x\n",IIC_status_register); }while (IIC_status_register != 0xc0);
						 usleep(200);

						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(0x71<<1))+1); //read
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01);  			//STOP read 1 byte
						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); /*printf("I2C status reg after start: %x\n",IIC_status_register);*/ }while (IIC_status_register != 0x88);

						 MSDB = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));  printf("               I2Cmux: %x\n",MSDB);

             	 	   };break;





             case'3':  {

            	 for(int loop=0;loop<2;loop++){
            	 //***************************** init AXI IIC ; set I2Cmux on ZC706 to FMC_HPC; enable all four ports on CAR board I2Cmux *******************************//

            	 //*((unsigned int*)(IIC_ptr + IIC_page_offset+0x040)) = 0x0a; // soft reset

				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x120)) = 0x0f; // set IIC RX_FIFO DEPTH to max 0xf
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x02; // reset IIC TX_FIFO
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x01; // enable AXI IIC

				  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); printf("I2C status reg after reset: %x\n",IIC_status_register);

				  printf("set I2Cmux on ZC706 to FMC HPC ... \n");
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x74<<1)); // U65 ZC706 I2Cmux
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x20); 		// enable II2C FMC HPC
				 for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));printf("I2C status reg after start: %x\n",IIC_status_register); }//while (IIC_status_register != 0xc0);

				  usleep(200);

				  printf("\n enable CAR I2Cmux I2C2 ... \n");
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x04);
				  for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));printf("I2C status reg after start: %x\n",IIC_status_register); }//while (IIC_status_register != 0xc0);
				  usleep(200);
				  printf("xx1\n");


				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x120)) = 0x0f; // set IIC RX_FIFO DEPTH to max 0xf
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x02; // reset IIC TX_FIFO
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x01; // enable AXI IIC

			      IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); printf("I2C status reg after reset: %x\n",IIC_status_register);

			      printf("set I2Cmux on ZC706 to FMC HPC ... \n");
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x74<<1)); // U65 ZC706 I2Cmux
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x20); 		// enable II2C FMC HPC
				  for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));printf("I2C status reg after start: %x\n",IIC_status_register); }//while (IIC_status_register != 0xc0);

				  usleep(200);

				  printf("\n enable CAR I2Cmux I2C2 ... \n");
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x04);
				  for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));printf("I2C status reg after start: %x\n",IIC_status_register); }//while (IIC_status_register != 0xc0);
				  usleep(200);
				  printf("xx2\n");









				 // start Configure -----------------------------------------------------------------------------------------------

				  int CHIP_ADDR = ChipBoard_I2Caddr;
				  //int CHIP_ADDR = 0x57;  // EEPROM test !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


		 		   //for (j=0;j<128;j++) printf("%3d %5d \n", j,td[0][j]); /////////////

				 //default Values:
				    for (j=0;j<32;j++) for (i=0;i<16;i++) ENINJ[j][i]=0x00;
				    for (j=0;j<32;j++) for (i=0;i<16;i++) ENSFOUT[j][i]=0;
				    for (j=0;j<32;j++) for (i=0;i<16;i++) {

				    	TDAC[j][i][0]= ( ((td[j][(i*8)+7]) & 0x1) <<7 ) +
		                               ( ((td[j][(i*8)+6]) & 0x1) <<6 ) +
		                               ( ((td[j][(i*8)+5]) & 0x1) <<5 ) +
		                               ( ((td[j][(i*8)+4]) & 0x1) <<4 ) +
		                               ( ((td[j][(i*8)+3]) & 0x1) <<3 ) +
		                               ( ((td[j][(i*8)+2]) & 0x1) <<2 ) +
		                               ( ((td[j][(i*8)+1]) & 0x1) <<1 ) +
		                               ( ((td[j][(i*8)+0]) & 0x1)  );




				    	TDAC[j][i][1]= ( (((td[j][(i*8)+7]) & 0x2)>>1) <<7 ) +
									   ( (((td[j][(i*8)+6]) & 0x2)>>1) <<6 ) +
									   ( (((td[j][(i*8)+5]) & 0x2)>>1) <<5 ) +
									   ( (((td[j][(i*8)+4]) & 0x2)>>1) <<4 ) +
									   ( (((td[j][(i*8)+3]) & 0x2)>>1) <<3 ) +
									   ( (((td[j][(i*8)+2]) & 0x2)>>1) <<2 ) +
									   ( (((td[j][(i*8)+1]) & 0x2)>>1) <<1 ) +
									   ( (((td[j][(i*8)+0]) & 0x2)>>1)  );



				    	TDAC[j][i][2]= ( (((td[j][(i*8)+7]) & 0x4)>>2) <<7 ) +
									   ( (((td[j][(i*8)+6]) & 0x4)>>2) <<6 ) +
									   ( (((td[j][(i*8)+5]) & 0x4)>>2) <<5 ) +
									   ( (((td[j][(i*8)+4]) & 0x4)>>2) <<4 ) +
									   ( (((td[j][(i*8)+3]) & 0x4)>>2) <<3 ) +
									   ( (((td[j][(i*8)+2]) & 0x4)>>2) <<2 ) +
									   ( (((td[j][(i*8)+1]) & 0x4)>>2) <<1 ) +
									   ( (((td[j][(i*8)+0]) & 0x4)>>2)  );



				    	TDAC[j][i][3]= ( (((td[j][(i*8)+7]) & 0x8)>>3) <<7 ) +
									   ( (((td[j][(i*8)+6]) & 0x8)>>3) <<6 ) +
									   ( (((td[j][(i*8)+5]) & 0x8)>>3) <<5 ) +
									   ( (((td[j][(i*8)+4]) & 0x8)>>3) <<4 ) +
									   ( (((td[j][(i*8)+3]) & 0x8)>>3) <<3 ) +
									   ( (((td[j][(i*8)+2]) & 0x8)>>3) <<2 ) +
									   ( (((td[j][(i*8)+1]) & 0x8)>>3) <<1 ) +
									   ( (((td[j][(i*8)+0]) & 0x8)>>3)  );
				    }
				    for (j=0;j<32;j++) for (i=0;i<16;i++) MASK[j][i]=0xff;
				    for (j=0;j<32;j++) for (i=0;i<16;i++) ENHB[j][i]=0;

				    EOCreg_Sub_addr = 0x0000;
				    PIXreg_Sub_addr = 0x0000;
					LD_switch=0;

					//TDAC[13][0][1]=0xf0; TDAC[13][1][1]=0xf1; TDAC[13][2][1]=0xf2; TDAC[13][3][1]=0xf3; TDAC[13][4][1]=0xf4; TDAC[13][5][1]=0xf5; TDAC[13][6][1]=0xf6; TDAC[13][7][1]=0xf7;
					//TDAC[13][8][1]=0xf8; TDAC[13][9][1]=0xf9; TDAC[13][10][1]=0xfa; TDAC[13][11][1]=0xfb; TDAC[13][12][1]=0xfc; TDAC[13][13][1]=0xfd; TDAC[13][14][1]=0xfe; TDAC[13][15][1]=0xff;   // for readback test

					MASK[13][9]=~(0x80);
                    ENINJ[13][9]=0x80;   // DCOL 13    PIXEL 79   "1000 0000"  "0000 0000"  "0000 0000"  "0000 0000"  "0000 0000"  "0000 0000"  "0000 0000" "0000 0000"  "0000 0000"  "0000 0000"
                   // ENSFOUT[13][9]=0x80;
              //      for (i=0;i<16;i++) ENSFOUT[13][i]=0xff;
                    ENHB[13][9]=0x80;

//
//             	   MASK[13][15]=~(0xff);
//             	  ENINJ[13][15]=0xff;
//            //   ENSFOUT[13][15]=0x01;
//             	   ENHB[13][15]=0xff;
//
//             	   MASK[2][2]=~(0x0f);
//             	  ENINJ[2][2]=0x0f;
//              // ENSFOUT[2][2]=0x40;
//             	   ENHB[2][2]=0x0f;
//
//             	   MASK[3][2]=~(0x0f);
//             	  ENINJ[3][2]=0x0f;
//              // ENSFOUT[3][2]=0x40;
//             	   ENHB[3][2]=0x0f;

                                    //    TDAC[7][3][0]=0; TDAC[7][3][1]=0; TDAC[7][3][2]=0; TDAC[7][3][3]=0;

             //EN_SFOUT_DCOL 13                                               // START +  CHIP_ADDR Write                                               //SubAddr[15..8]                                              //SubAddr[7..0]
			 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( CHIP_ADDR<<1));   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x04;  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x10;
			 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x0d);     do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for ////BUS free
																 // STOP  + [5]  disable all SFOUT DCOL outputs  [4..0] DCOL addr for SFOUT  ( LD_switch 7 has also to be set in DCOL configuration ! )
			 usleep(500);// EEPROM test !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!



 //                   MASK[13][0]=~(0x80);
 //                   ENINJ[13][0]=0x80;

					// for (j=0;j<32;j++) { ENSFOUT[j][0]=0x80; ENHB[j][0]=0x80; }


//
//				       MASK[13][15]=~(0xff);
//				      ENINJ[13][15]=0xff;
//				 //   ENSFOUT[13][15]=0x01;
//				       ENHB[13][15]=0xff;
//				 //      TDAC[13][15][0]=0; TDAC[13][15][1]=0; TDAC[13][15][2]=0; TDAC[13][15][3]=0;

                 //   MASK[1][6]=~(0x80);
                 //   ENINJ[1][6]=0x80;

                 //configuring DCOLs:
				 for (j=0;j<32;j++) {

					 EOCreg_Sub_addr =((0x10 + (j<<5)) & 0xffff); PIXreg_Sub_addr = (j<<5) & 0xffff;


					 // LD_switch : [6]EnableHitBus = 1  [4]EnableReadout = 1    =>  "0101 0xxx"   xxx => LDbit

					 LD_switch=0x10;   for (i=0;i<16;i++) PixReg[i] =   ENINJ[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
					 LD_switch=0x11;   for (i=0;i<16;i++) PixReg[i] = ENSFOUT[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
					 LD_switch=0x12;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][0];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
					 LD_switch=0x13;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][1];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
					 LD_switch=0x14;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][2];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
					 LD_switch=0x15;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][3];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
					 LD_switch=0x16;   for (i=0;i<16;i++) PixReg[i] =    MASK[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
					 LD_switch=0x17;   for (i=0;i<16;i++) PixReg[i] =    ENHB[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);

//					 LD_switch=0x00;   for (i=0;i<16;i++) PixReg[i] =   ENINJ[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);   // readout deactivated idle pattern only !!!!!!!!!!!!!!!!!!!
//					 LD_switch=0x01;   for (i=0;i<16;i++) PixReg[i] = ENSFOUT[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
//					 LD_switch=0x02;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][0];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
//					 LD_switch=0x03;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][1];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
//					 LD_switch=0x04;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][2];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
//					 LD_switch=0x05;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][3];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
//					 LD_switch=0x06;   for (i=0;i<16;i++) PixReg[i] =    MASK[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
//					 LD_switch=0x07;   for (i=0;i<16;i++) PixReg[i] =    ENHB[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);

					 //printf("DCOL#%2d:   EOCreg_Sub_addr:0x%04lx     PIXreg_Sub_addr:0x%04lx\n",j,EOCreg_Sub_addr, PIXreg_Sub_addr);
				 }




				slow_control(CHIP_ADDR,0x00e0,0x57 ); 	// 	TEST ENABLE HB DC7 on - start Shift - LD switch
				slow_control(CHIP_ADDR,0x01b0,0x73 ); 	// 	TDAC[1] DCOL 13 	readback enable
				slow_control(CHIP_ADDR,0x01b0,0x7b ); 	// 	TDAC[1] DCOL 13 	readback enable shift

				slow_control(CHIP_ADDR,0x0400,0x00 );	//	CONF_REG_TSINI		timestamp counter set value = 0x00
				slow_control(CHIP_ADDR,0x0401,0x04 );	//	CONF_REG_TSCTRL  	[2] enable/disable slow control set    	[1] start counting = 0 / stop counting = 1    	[0] unused
				slow_control(CHIP_ADDR,0x0402,0x01 );	//	CU_CTRL														[1] debug readout mode							[0] normal readout mode
				slow_control(CHIP_ADDR,0x0403,0x05 );	//	TX_CTRL				[2] enable transmission					[1] debug readout mode							[0] normal readout mode

				//slow_control(CHIP_ADDR,0x0406,0xf7 );	//	IDLE_PATTERN_0
				//slow_control(CHIP_ADDR,0x0407,0xf7 );	//	IDLE_PATTERN_1
				//slow_control(CHIP_ADDR,0x0408,0xf7 );	//	IDLE_PATTERN_2
				//slow_control(CHIP_ADDR,0x0409,0xfb );	//	IDLE_PATTERN_3

				slow_control(CHIP_ADDR,0x040e,0x0d );	//	EN_SER_OUT_DCOL		[4..0] DCOL addr
				slow_control(CHIP_ADDR,0x040f,0x00 );	//	EN_EXT_CTRL		    [3..0] not used in MPW4!
				slow_control(CHIP_ADDR,0x0410,0x0d );	//	EN_SFOUT_DCOL		[5]  disable all SFOUT DCOL outputs  	[4..0] DCOL addr for SFOUT  ( LD_switch 7 has also to be set in DCOL configuration ! )

				 //bitwise not !!!
				slow_control(CHIP_ADDR,0x0417,0x13 );	//	VPCOMP  	0x2c
				//slow_control(CHIP_ADDR,0x0418,0x24 );	//	VPTRIM  	0x1b
				slow_control(CHIP_ADDR,0x0418,0x04 );	//	VPTRIM      0x24
				slow_control(CHIP_ADDR,0x0419,0x32 );	//	VSENSBIAS  	0x0d

				slow_control(CHIP_ADDR,0x041a,0x26 );	//	VBLR      	0x19
				slow_control(CHIP_ADDR,0x041b,0x2d );	//	VNSF     	0x12
				slow_control(CHIP_ADDR,0x041c,0x12 );	//	VNFB     	0x2d
				slow_control(CHIP_ADDR,0x041d,0x26 );	//	VBFB     	0x19
				slow_control(CHIP_ADDR,0x041e,0x25 );	//	VPBIAS     	0x1a
				slow_control(CHIP_ADDR,0x041f,0x15 );	//	VN     		0x2a


				 /////////////////////////////////////////////////////////////////////////////////////////////////////////////








//				  //printf("\n write to eeprom ... \n");
//								  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x57<<1));   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x0;  	    			//start address byte
//								  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x2c;  	    			//1st data byte
//								  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x1b;  	    			//2nd data byte
//								  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x0d;  	    			//3rd data byte
//								  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x19;  	    			//4th data byte
//	 							  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x12;  	    			//5th data byte
//								  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x2d;  	    			//6th data byte
//	 							  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x19;  	    			//7th data byte
//								  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x1a;  	    			//8th data byte
//								  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) =(0x200 + 0x2a);  	    //9th data byte + STOP
//								  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); /*printf("I2C status reg after start: %x\n",IIC_status_register);*/ }while (IIC_status_register != 0xc0);
//								  usleep(5000);  // 3ms too short !!

                  printf("\n read from MPW3 REG ... \n");
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(CHIP_ADDR<<1));     //write
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x04;  	    			//address byte
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x00;  	    			//address byte
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(CHIP_ADDR<<1))+1); //repeated start read
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x4);  		//STOP read 4 bytes

				  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); /*printf("I2C status reg after start: %x\n",IIC_status_register)*/;}while (IIC_status_register != 0x88);

				  for (i=0;i<4;i++) {  IIC_RX_fifo = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));  printf("   %02x\n",IIC_RX_fifo);}

				  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc8);



//
//				  printf("\n read from eeprom ... \n");
//				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x57<<1));     //write
//				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x0;  	    			//start address byte
//				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(0x57<<1))+1); //repeated start read
//				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x9);  		//STOP read 9 bytes
//
//				  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); /*printf("I2C status reg after start: %x\n",IIC_status_register)*/;}while (IIC_status_register != 0x88);
//
//				  for (i=0;i<9;i++) {  IIC_RX_fifo = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));  printf("   %02x\n",IIC_RX_fifo);}
//
//				  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc8);
//				  /////////////////////////////////////////////////////////////////////////////////////////////////////////////



                  		//readback PAD_SOUT_PC CTRL2_ptr
						printf("\nPAD_SOUT_PC readback[hex]:\n");
						for (i=0;i<4;i++) {
						  //*((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = i;
						  *((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0))= (i<<4);
						  d=*((unsigned int *)(status0_ptr + status0_in_page_offset+0x0008)); //printf("%08x",d);

						  printf(" %02x",BitReverseTable256[((d>>24)&0xff)]);
						  printf(" %02x",BitReverseTable256[((d>>16)&0xff)]);
						  printf(" %02x",BitReverseTable256[((d>>8)&0xff)]);
						  printf(" %02x",BitReverseTable256[(d & 0xff)]);


						}
						printf("\n");
                        //sleep(0.2);
                        // end Configure PC -----------------------------------------------------------------------------------------------
            	 } //end loop





            	 // configure Piggy :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

            	 d=*((unsigned int *)(AXI_REG_ARRAY_ptr + AXI_REG_ARRAY_page_offset+0x04)); printf("%08x\n",d); //check if dip_switches_4bits_tri_i(1)
            	 if ((d>>1)&0x1) {

            	  int CHIP_ADDR = PiggyBoard_I2Caddr;
            	  //default Values:
            	  for (j=0;j<32;j++) for (i=0;i<16;i++) ENINJ[j][i]=0x00;
            	  for (j=0;j<32;j++) for (i=0;i<16;i++) ENSFOUT[j][i]=0;
            	  for (j=0;j<32;j++) for (i=0;i<16;i++) { TDAC[j][i][0]= 0xff; TDAC[j][i][1]= 0xff; TDAC[j][i][2]= 0xff; TDAC[j][i][3]= 0x00; }
            	  for (j=0;j<32;j++) for (i=0;i<16;i++) MASK[j][i]=0xff;
            	  for (j=0;j<32;j++) for (i=0;i<16;i++) ENHB[j][i]=0;

            	  EOCreg_Sub_addr = 0x0000;
            	  PIXreg_Sub_addr = 0x0000;
            	  LD_switch=0;
//
//            	   MASK[13][8]=~(0x80);
//            	  ENINJ[13][8]=0x80;   // DCOL 13    PIXEL 79   "1000 0000"  "0000 0000"  "0000 0000"  "0000 0000"  "0000 0000"  "0000 0000"  "0000 0000" "0000 0000"  "0000 0000"  "0000 0000"
//             // ENSFOUT[13][8]=0x80;
//                   ENHB[13][8]=0x80;
//
//            	   MASK[13][15]=~(0xff);
//            	  ENINJ[13][15]=0xff;
//           //   ENSFOUT[13][15]=0x01;
//            	   ENHB[13][15]=0xff;
//
//            	   MASK[2][2]=~(0x0f);
//            	  ENINJ[2][2]=0x0f;
//             // ENSFOUT[2][2]=0x40;
//            	   ENHB[2][2]=0x0f;
//
//            	   MASK[3][2]=~(0x0f);
//            	  ENINJ[3][2]=0x0f;
//             // ENSFOUT[3][2]=0x40;
//            	   ENHB[3][2]=0x0f;
//

            	   MASK[29][1]=~(0xc0);
            	  ENINJ[29][1]=0xc0;
                   ENHB[29][1]=0xc0;


                   MASK[28][1]=~(0x40);
                  ENINJ[28][1]=0x40;
                   ENHB[28][1]=0x40;


				   //EN_SFOUT_DCOL 13                                  // START +  CHIP_ADDR Write                                               //SubAddr[15..8]                                              //SubAddr[7..0]
				   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( CHIP_ADDR<<1));   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x04;  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x10;
				   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x0d);     do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for ////BUS free
																	 // STOP  + [5]  disable all SFOUT DCOL outputs  [4..0] DCOL addr for SFOUT  ( LD_switch 7 has also to be set in DCOL configuration ! )
				   usleep(500);





				   //configuring DCOLs:
				   for (j=0;j<32;j++) {

						 EOCreg_Sub_addr =((0x10 + (j<<5)) & 0xffff); PIXreg_Sub_addr = (j<<5) & 0xffff;


						 // LD_switch : [6]EnableHitBus = 1  [4]EnableReadout = 1    =>  "0101 0xxx"   xxx => LDbit

						 LD_switch=0x10;   for (i=0;i<16;i++) PixReg[i] =   ENINJ[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
						 LD_switch=0x11;   for (i=0;i<16;i++) PixReg[i] = ENSFOUT[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
						 LD_switch=0x12;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][0];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
						 LD_switch=0x13;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][1];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
						 LD_switch=0x14;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][2];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
						 LD_switch=0x15;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][3];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
						 LD_switch=0x16;   for (i=0;i<16;i++) PixReg[i] =    MASK[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
						 LD_switch=0x17;   for (i=0;i<16;i++) PixReg[i] =    ENHB[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);

	//					 LD_switch=0x00;   for (i=0;i<16;i++) PixReg[i] =   ENINJ[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);   // readout deactivated idle pattern only !!!!!!!!!!!!!!!!!!!
	//					 LD_switch=0x01;   for (i=0;i<16;i++) PixReg[i] = ENSFOUT[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
	//					 LD_switch=0x02;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][0];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
	//					 LD_switch=0x03;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][1];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
	//					 LD_switch=0x04;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][2];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
	//					 LD_switch=0x05;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][3];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
	//					 LD_switch=0x06;   for (i=0;i<16;i++) PixReg[i] =    MASK[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
	//					 LD_switch=0x07;   for (i=0;i<16;i++) PixReg[i] =    ENHB[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);

						 //printf("DCOL#%2d:   EOCreg_Sub_addr:0x%04lx     PIXreg_Sub_addr:0x%04lx\n",j,EOCreg_Sub_addr, PIXreg_Sub_addr);
					}




					slow_control(CHIP_ADDR,0x00e0,0x57 ); 	// 	TEST ENABLE HB DC7 on - start Shift - LD switch
					slow_control(CHIP_ADDR,0x01b0,0x73 ); 	// 	TDAC[1] DCOL 13 	readback enable
					slow_control(CHIP_ADDR,0x01b0,0x7b ); 	// 	TDAC[1] DCOL 13 	readback enable shift

					slow_control(CHIP_ADDR,0x0400,0x00 );	//	CONF_REG_TSINI		timestamp counter set value = 0x00
					slow_control(CHIP_ADDR,0x0401,0x04 );	//	CONF_REG_TSCTRL  	[2] enable/disable slow control set    	[1] start counting = 0 / stop counting = 1    	[0] unused
					slow_control(CHIP_ADDR,0x0402,0x01 );	//	CU_CTRL														[1] debug readout mode							[0] normal readout mode
					slow_control(CHIP_ADDR,0x0403,0x05 );	//	TX_CTRL				[2] enable transmission					[1] debug readout mode							[0] normal readout mode

					//slow_control(CHIP_ADDR,0x0406,0xf7 );	//	IDLE_PATTERN_0
					//slow_control(CHIP_ADDR,0x0407,0xf7 );	//	IDLE_PATTERN_1
					//slow_control(CHIP_ADDR,0x0408,0xf7 );	//	IDLE_PATTERN_2
					//slow_control(CHIP_ADDR,0x0409,0xfb );	//	IDLE_PATTERN_3

					slow_control(CHIP_ADDR,0x040e,0x0d );	//	EN_SER_OUT_DCOL		[4..0] DCOL addr
					slow_control(CHIP_ADDR,0x040f,0x00 );	//	EN_EXT_CTRL		    [3..0] not used in MPW4!
					slow_control(CHIP_ADDR,0x0410,0x0d );	//	EN_SFOUT_DCOL		[5]  disable all SFOUT DCOL outputs  	[4..0] DCOL addr for SFOUT  ( LD_switch 7 has also to be set in DCOL configuration ! )

					 //bitwise not !!!
					slow_control(CHIP_ADDR,0x0417,0x13 );	//	VPCOMP  	0x2c
					//slow_control(CHIP_ADDR,0x0418,0x24 );	//	VPTRIM  	0x1b
					slow_control(CHIP_ADDR,0x0418,0x04 );	//	VPTRIM      0x24
					slow_control(CHIP_ADDR,0x0419,0x32 );	//	VSENSBIAS  	0x0d

					slow_control(CHIP_ADDR,0x041a,0x26 );	//	VBLR      	0x19
					slow_control(CHIP_ADDR,0x041b,0x2d );	//	VNSF     	0x12
					slow_control(CHIP_ADDR,0x041c,0x12 );	//	VNFB     	0x2d
					slow_control(CHIP_ADDR,0x041d,0x26 );	//	VBFB     	0x19
					slow_control(CHIP_ADDR,0x041e,0x25 );	//	VPBIAS     	0x1a
					slow_control(CHIP_ADDR,0x041f,0x15 );	//	VN     		0x2a


					 /////////////////////////////////////////////////////////////////////////////////////////////////////////////




					  printf("\n read from Piggy MPW3 REG ... \n");
					  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(CHIP_ADDR<<1));     //write
					  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x04;  	    			//address byte
					  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x00;  	    			//address byte
					  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(CHIP_ADDR<<1))+1); //repeated start read
					  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x4);  		//STOP read 4 bytes

					  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); /*printf("I2C status reg after start: %x\n",IIC_status_register)*/;}while (IIC_status_register != 0x88);

					  for (i=0;i<4;i++) {  IIC_RX_fifo = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));  printf("   %02x\n",IIC_RX_fifo);}

					  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc8);


            	 }


            	 // end configure Piggy :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

             };break;





             case'4':  {

            	 	 	 //set IP SRC addr:  default x"c0_a8_c9_0" & "00" & dip_switches_4bits_tri_i(3 downto 2),  => 192.168.201.0+dip_switches
						 // *((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = 0x0c0a8c91; // Bit[31] ext res active + 28MSBs IPaddr
							*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = 0x00000000; // Bit[31] ext res active + 28MSBs IPaddr

            	 	 	  printf("\n enable CAR I2Cmux I2C3 ... \n");
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x08); 		// enable 3
						  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
						  usleep(200);

						 // DACS


						 printf("set Bias_1 -> 0mV\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x00, 0); usleep(200);
						 printf("set Bias_2 -> 0mV\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x02, 0); usleep(200);
						 printf("set Bias_3 -> 0mV\n"); 	    CARwrite_DAC7678_channel( 0x4a, 0x04, 0); usleep(200);
						 printf("set Bias_4 -> 0mV\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x06, 0); usleep(200);
						 printf("set Bias_5 -> 0mV\n");	 	    CARwrite_DAC7678_channel( 0x4a, 0x01, 0); usleep(200);
						 printf("set Bias_6 -> 0mV\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x03, 0); usleep(200);
						 printf("set Bias_7 -> 0mV\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x05, 0); usleep(200);
						 printf("set Bias_8 -> 0mV\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x07, 0); usleep(200);

						 printf("set Bias_9 -> 0mV\n");	 	    CARwrite_DAC7678_channel( 0x4c, 0x00, 0); usleep(200);
						 printf("set Bias_10-> 0mV\n"); 		CARwrite_DAC7678_channel( 0x4c, 0x02, 0); usleep(200);
						 printf("set Bias_11-> 0mV\n"); 		CARwrite_DAC7678_channel( 0x4c, 0x04, 0); usleep(200);
						 printf("set Bias_12-> 0mV\n"); 		CARwrite_DAC7678_channel( 0x4c, 0x06, 0); usleep(200);
						 printf("set Bias_13-> 0mV\n"); 		CARwrite_DAC7678_channel( 0x4c, 0x01, 0); usleep(200);


						 printf("\n enable CAR I2Cmux I2C0 ... \n");
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01); 		// enable 0
						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
						 usleep(200);

		 	 	 	 	 // POWER

						 printf("powerOff\n");

//            	 	 	 //configure as outputs
//						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x76<<1));
//						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x06);  //configuration port 0
//						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x00);  //port 0 all outputs
//						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x00); ////port 1 all outputs
//						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free

						 //set outputs
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x76<<1));
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x02);  //configuration port 0
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x00);  //P00 .. P07 = 0
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x00); //P10..P17 = 0
						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free



                       };break;





             case'5':  {

            	 	 	 printf("\n enable CAR I2Cmux I2C0 ... \n");
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01); 		// enable 0
						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
						 usleep(200);

            	 	 	 printf("\n\nSI5345 registers: \n");
						 //set page
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x68<<1));
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x00);  //RegAddr
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x00); //page
						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free

						 //select start register for read
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x68<<1));
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01); //RegAddr
						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);

						 //read j bytes (<15) !!
						 j=14;
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(0x68<<1))+1); //read
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + j);  			//STOP read j bytes
						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); /*printf("I2C status reg after start: %x\n",IIC_status_register);*/ }while (IIC_status_register != 0x88);

						 for (i=0;i<j;i++) {  IIC_RX_fifo = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));  printf("   Register %3d: %x\n",i,IIC_RX_fifo);}

						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc8);

                       };break;




            case'6':  {

            			 printf("\n enable CAR I2Cmux I2C1 ... \n");
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x02); 		// enable 1
						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); printf("I2C status reg after start: %x\n",IIC_status_register); }while (IIC_status_register != 0xc0);
						 usleep(200);

						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(0x71<<1))+1); //read
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01);  			//STOP read 1 byte
						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); /*printf("I2C status reg after start: %x\n",IIC_status_register);*/ }while (IIC_status_register != 0x88);

						 MSDB = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));  printf("               I2Cmux: %x\n",MSDB);

						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc8);

						 CARwrite_INA226( 0x42, 0x00, 0x41, 0x27); // reset configuration register
						 printf("%0x\n",CARread_INA226( 0x42, 0x00));


						 printf(" P1V8_VDDA      "); 	printf("  V_bus = %8.2f [mV] ",CARread_INA226_voltage( 0x40, 0x02));  printf("      V_shunt = %8.2f [uV]\n",CARread_INA226_voltage( 0x40, 0x01));
                         printf(" P1V3_VSSA      "); 	printf("  V_bus = %8.2f [mV] ",CARread_INA226_voltage( 0x41, 0x02));  printf("      V_shunt = %8.2f [uV]\n",CARread_INA226_voltage( 0x41, 0x01));
                         printf(" P1V8_VDDC      "); 	printf("  V_bus = %8.2f [mV] ",CARread_INA226_voltage( 0x42, 0x02));  printf("      V_shunt = %8.2f [uV]\n",CARread_INA226_voltage( 0x42, 0x01));
                         printf(" P1V8_VDD!      "); 	printf("  V_bus = %8.2f [mV] ",CARread_INA226_voltage( 0x43, 0x02));  printf("      V_shunt = %8.2f [uV]\n",CARread_INA226_voltage( 0x43, 0x01));
                         printf(" P3V3D          "); 	printf("  V_bus = %8.2f [mV] ",CARread_INA226_voltage( 0x44, 0x02));  printf("      V_shunt = %8.2f [uV]\n",CARread_INA226_voltage( 0x44, 0x01));
                         printf(" P1V8_NW_RING   "); 	printf("  V_bus = %8.2f [mV] ",CARread_INA226_voltage( 0x45, 0x02));  printf("      V_shunt = %8.2f [uV]\n",CARread_INA226_voltage( 0x45, 0x01));
                         printf(" P1V8_VSENSBIAS "); 	printf("  V_bus = %8.2f [mV] ",CARread_INA226_voltage( 0x46, 0x02));  printf("      V_shunt = %8.2f [uV]\n",CARread_INA226_voltage( 0x46, 0x01));
                         printf(" P2V5D          "); 	printf("  V_bus = %8.2f [mV] ",CARread_INA226_voltage( 0x4a, 0x02));  printf("      V_shunt = %8.2f [uV]\n",CARread_INA226_voltage( 0x4a, 0x01));


						 printf("\n");
						 printf("\n");

                      };break;





            case'7':  {

            	 printf("\n enable CAR I2Cmux I2C3 ... \n");
				 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
				 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x08); 		// enable 3
				 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
				 usleep(200);
				 CARwrite_DAC7678_channel( 0x4f, 0x06, 0); //INJ =0

				 printf("THR = "); scanf("%hd",&a);  fflush(stdin);   //read THR
				 printf("VDD = "); scanf("%hd",&b);  fflush(stdin);   //read VDD

				 printf("set Bias_1 -> DEL_HI     ...\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x00, 700); usleep(200);
				 printf("set Bias_2 -> TH         ...\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x02, a); usleep(200);
				 printf("set Bias_3 -> DEL_LO     ...\n"); 	    CARwrite_DAC7678_channel( 0x4a, 0x04, 900); usleep(200);
				 printf("set Bias_4 -> BL         ...\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x06, 900); usleep(200);
				 sleep(3);
				 printf("set PWR_ADJ_4  P1V8_VDD!     ..\n"); 	CARwrite_DAC7678_channel( 0x49, 0x06, 3600 -b ); usleep(200);
				 sleep(10);
				 printf("set PWR_ADJ_4  P1V8_VDD!     ..\n"); 	CARwrite_DAC7678_channel( 0x49, 0x06, 1775); usleep(200);


            };break;

            case'8':  {

            	    printf("\n enable CAR I2Cmux I2C3 ... \n");
				    *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
				    *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x08); 		// enable 3
				    do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
				    usleep(200);

				    printf("THR = "); scanf("%hd",&a);  fflush(stdin);   //read THR

				   						 printf("set Bias_1 -> DEL_HI     ...\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x00, 700); usleep(200);
				   						 printf("set Bias_2 -> TH         ...\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x02, a); usleep(200);
				   						 printf("set Bias_3 -> DEL_LO     ...\n"); 	    CARwrite_DAC7678_channel( 0x4a, 0x04, 900); usleep(200);
				   						 printf("set Bias_4 -> BL         ...\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x06, 900); usleep(200);

				    CARwrite_DAC7678_channel( 0x4f, 0x06, 1800);
				    usleep(1000);

            	    for (i=0;i<100000;i++) {

            	    	 *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x80000000; //[31] =1 reset 200MHz Counter
            	         *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000; //[31] =0


            	        //send INJECTION PULS 1800mV / 160ns
            	        *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x100e0; //INJ =1 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
            	        *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0xe0;    //INJ =0 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
            	        usleep(1000);



            	    }

            	    printf("INJ = "); scanf("%hd",&a);  fflush(stdin);   //read THR

            	    CARwrite_DAC7678_channel( 0x4f, 0x06, a);
            	    usleep(1000);

					};break;



            case'9':  {


            			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(0x4a<<1))); //write
            			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ( 0x00); //register#
            			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ( 0x41);
            			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ( 0x200+ 0x2f);  			//STOP byte
            			  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));  }while (IIC_status_register != 0xc0);




            			 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x4a<<1));
						   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x0); // register
						   do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
						  usleep(500);
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(0x4a<<1))+1); //read
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200+ 0x02);  			//STOP read 2 bytes
						  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));  }while (IIC_status_register != 0x88);

						 printf("%x  ",*((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c)) );
						 printf("%x\n",*((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c)) );



            	 printf(" P2V5D          "); 	printf("  V_bus = % 8.2f [mV] ",CARread_INA226_voltage( 0x4a, 0x02));  printf("      V_shunt = % 7.2f [uV]\n",CARread_INA226_voltage( 0x4a, 0x01));

            	 	 	 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x4a<<1));
						   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x0); // register
						   do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
						  usleep(500);
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(0x4a<<1))+1); //read
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200+ 0x02);  			//STOP read 2 bytes
						  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));  }while (IIC_status_register != 0x88);

						 printf("%x\n",*((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c)) );
						 printf("%x\n",*((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c)) );

//						 printf("\n enable CAR I2Cmux I2C2 ... \n");
//						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
//						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x04); 		// enable 2
//						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
//						 usleep(200);
//
//						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(0x71<<1))+1); //read
//						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01);  			//STOP read 1 byte
//						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); /*printf("I2C status reg after start: %x\n",IIC_status_register);*/ }while (IIC_status_register != 0x88);
//
//						 MSDB = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));  printf("               I2Cmux: %x\n",MSDB);
//
//						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc8);
//
//
//
//
//
//						 printf("\n\n read MPW1_chipboard voltages: \n");
//
//
//
//						 //setup byte MAX1161x
//					     *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x35<<1) ); // MPW1chip_board_MAX11617
//					     *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x2d0); 		 	 //  stop + setup_byte (int clock)
//					     do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
//
//
//					     usleep(200);
//
//					     printf("   VN           "); 	printf("= % 9.2f [mV] ",chipboard_read_MAX1161x( 0x35, 0x00)); printf("   % 9.2f [mV] ",chipboard_read_MAX1161x( 0x35, 0x00)); printf("   % 9.2f [mV] \n",chipboard_read_MAX1161x( 0x35, 0x00));
//						 printf("   VNCASC       "); 	printf("= % 9.2f [mV] ",chipboard_read_MAX1161x( 0x35, 0x01)); printf("   % 9.2f [mV] ",chipboard_read_MAX1161x( 0x35, 0x01)); printf("   % 9.2f [mV] \n",chipboard_read_MAX1161x( 0x35, 0x01));
//						 printf("   VNSF         "); 	printf("= % 9.2f [mV] ",chipboard_read_MAX1161x( 0x35, 0x02)); printf("   % 9.2f [mV] ",chipboard_read_MAX1161x( 0x35, 0x02)); printf("   % 9.2f [mV] \n",chipboard_read_MAX1161x( 0x35, 0x02));
//						 printf("   VPTRIM       "); 	printf("= % 9.2f [mV] ",chipboard_read_MAX1161x( 0x35, 0x03)); printf("   % 9.2f [mV] ",chipboard_read_MAX1161x( 0x35, 0x03)); printf("   % 9.2f [mV] \n",chipboard_read_MAX1161x( 0x35, 0x03));
//						 printf("   VPCOMP       "); 	printf("= % 9.2f [mV] ",chipboard_read_MAX1161x( 0x35, 0x04)); printf("   % 9.2f [mV] ",chipboard_read_MAX1161x( 0x35, 0x04)); printf("   % 9.2f [mV] \n",chipboard_read_MAX1161x( 0x35, 0x04));
//						 printf("   VNSENSBIAS   "); 	printf("= % 9.2f [mV] ",chipboard_read_MAX1161x( 0x35, 0x05)); printf("   % 9.2f [mV] ",chipboard_read_MAX1161x( 0x35, 0x05)); printf("   % 9.2f [mV] \n",chipboard_read_MAX1161x( 0x35, 0x05));
//						 printf("   VBLR         "); 	printf("= % 9.2f [mV] ",chipboard_read_MAX1161x( 0x35, 0x06)); printf("   % 9.2f [mV] ",chipboard_read_MAX1161x( 0x35, 0x06)); printf("   % 9.2f [mV] \n",chipboard_read_MAX1161x( 0x35, 0x06));
//						 printf("   VNFB_CONT    "); 	printf("= % 9.2f [mV] ",chipboard_read_MAX1161x( 0x35, 0x08)); printf("   % 9.2f [mV] ",chipboard_read_MAX1161x( 0x35, 0x08)); printf("   % 9.2f [mV] \n",chipboard_read_MAX1161x( 0x35, 0x08));
//						 printf("   VPFB_SW      "); 	printf("= % 9.2f [mV] ",chipboard_read_MAX1161x( 0x35, 0x09)); printf("   % 9.2f [mV] ",chipboard_read_MAX1161x( 0x35, 0x09)); printf("   % 9.2f [mV] \n",chipboard_read_MAX1161x( 0x35, 0x09));
//						 printf("   VPBIAS       "); 	printf("= % 9.2f [mV] ",chipboard_read_MAX1161x( 0x35, 0x0a)); printf("   % 9.2f [mV] ",chipboard_read_MAX1161x( 0x35, 0x0a)); printf("   % 9.2f [mV] \n",chipboard_read_MAX1161x( 0x35, 0x0a));
//						 printf("   VNCS_BB      "); 	printf("= % 9.2f [mV] ",chipboard_read_MAX1161x( 0x35, 0x0b)); printf("   % 9.2f [mV] ",chipboard_read_MAX1161x( 0x35, 0x0b)); printf("   % 9.2f [mV] \n",chipboard_read_MAX1161x( 0x35, 0x0b));
//						 printf("\n\n");
//

            			};break;

            case'a':  {

           	 //***************************** init AXI IIC ; set I2Cmux on ZC706 to FMC_HPC; enable all four ports on CAR board I2Cmux *******************************//

            	          //*((unsigned int*)(IIC_ptr + IIC_page_offset+0x040)) = 0x0a; // soft reset

            	    	  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x120)) = 0x0f; // set IIC RX_FIFO DEPTH to max 0xf
            	          *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x02; // reset IIC TX_FIFO
            	          *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x01; // enable AXI IIC

           				  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); printf("I2C status reg after reset: %x\n",IIC_status_register);

           				  printf("set I2Cmux on ZC706 to FMC HPC ... \n");
           				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x74<<1)); // U65 ZC706 I2Cmux
           				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x20); 		// enable II2C FMC HPC
           				 for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));printf("I2C status reg after start: %x\n",IIC_status_register); }//while (IIC_status_register != 0xc0);

           				  usleep(200);

           				//  printf("\n enable CAR I2Cmux I2C2 ... \n");
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x04);
						  for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));printf("I2C status reg after start: %x\n",IIC_status_register); }//while (IIC_status_register != 0xc0);
						  usleep(200);
						  printf("xx1\n");

           				 //*((unsigned int*)(IIC_ptr + IIC_page_offset+0x120)) = 0x0f; // set IIC RX_FIFO DEPTH to max 0xf
						 // *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x02; // reset IIC TX_FIFO
						  //*((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x01; // enable AXI IIC
//						  printf("\n");
//						  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x1C));  printf("I2C GIE   reg after init: %2x\n",IIC_status_register);
//						  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x20));  printf("I2C ISR   reg after init: %2x\n",IIC_status_register);
//						  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x28));  printf("I2C IER   reg after init: %2x\n",IIC_status_register);
//						  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x40));  printf("I2C SOFTR reg after init: %2x\n",IIC_status_register);
//						  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x100)); printf("I2C CR    reg after init: %2x\n",IIC_status_register);
//						  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); printf("I2C SR    reg after init: %2x\n",IIC_status_register);
//						  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x108)); printf("I2C TX_F  reg after init: %2x\n",IIC_status_register);
//						  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c)); printf("I2C RX_F  reg after init: %2x\n",IIC_status_register);
//						  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x110)); printf("I2C ADR   reg after init: %2x\n",IIC_status_register);
//						  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x114)); printf("I2C T_OCY reg after init: %2x\n",IIC_status_register);
//						  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x118)); printf("I2C R_OCY reg after init: %2x\n",IIC_status_register);
//						  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x11c)); printf("I2C T_ADR reg after init: %2x\n",IIC_status_register);
//						  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x120)); printf("I2C R_PIR reg after init: %2x\n",IIC_status_register);
//						  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x124)); printf("I2C GPO   reg after init: %2x\n",IIC_status_register);
//						  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x128)); printf("I2C TSUST reg after init: %2x\n",IIC_status_register);



            			//read MPW1_chipboard EEPROM/////////////////////////////////////////////////////////////////////////////////////////////

						  //*((unsigned int*)(IIC_ptr + IIC_page_offset+0x040)) = 0x0a; // soft reset

						             	    	  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x120)) = 0x0f; // set IIC RX_FIFO DEPTH to max 0xf
						             	          *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x02; // reset IIC TX_FIFO
						             	          *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x01; // enable AXI IIC

						            				  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); printf("I2C status reg after reset: %x\n",IIC_status_register);

						            				  printf("set I2Cmux on ZC706 to FMC HPC ... \n");
						            				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x74<<1)); // U65 ZC706 I2Cmux
						            				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x20); 		// enable II2C FMC HPC
						            				 for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));printf("I2C status reg after start: %x\n",IIC_status_register); }//while (IIC_status_register != 0xc0);

						            				  usleep(200);

						            				//  printf("\n enable CAR I2Cmux I2C2 ... \n");
						 						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x04);
						 						  for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));printf("I2C status reg after start: %x\n",IIC_status_register); }//while (IIC_status_register != 0xc0);
						 						  usleep(200);
						 						  printf("xx2\n");





						  printf("\n write to eeprom ... \n");
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x57<<1));     //write
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x0;  	    			//start address byte
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0xe;  	    			//1st data byte
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0xa;  	    			//2nd data byte
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) =(0x200 + 0x13);  	    //3rd data byte + STOP
						  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); printf("I2C status reg after start: %x\n",IIC_status_register); }while (IIC_status_register != 0xc0);
						  usleep(5000);  // 3ms too short !!


						  printf("\n read from eeprom ... \n");
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x57<<1));     //write
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x0;  	    			//start address byte
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(0x57<<1))+1); //repeated start read
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x0c);  		//STOP read 12 bytes

						  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); printf("I2C status reg after start: %x\n",IIC_status_register); }while (IIC_status_register != 0x88);

						  for (i=0;i<12;i++) {  IIC_RX_fifo = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));  printf("   Addr. %3d: %x\n",i,IIC_RX_fifo);}

						  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc8);
						  /////////////////////////////////////////////////////////////////////////////////////////////////////////////

            			};break;



            case'b':  {

                        //read MPW1_chipboard TEMP/////////////////////////////////////////////////////////////////////////////////////////////

						  printf("\n enable CAR I2Cmux I2C2 ... \n");
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x04);
						  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

						  // ---write register pointer
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x18<<1));     	// start write
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x05);  			// STOP + pointer 0x5
						  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

						  // ---read Ta register
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(0x18<<1))+1); //read
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200+ 0x02);  			//STOP read 2 bytes
						  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));  }while (IIC_status_register != 0x88);

						  MSDB = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
						  LSDB = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));

						  temp_int=( ((MSDB&0x0f)<<4) + ((LSDB&0xf0)>>4) );
						  temp_frag=((LSDB&0x0c)>>2);
						  printf("        MPW1chipboard temperature = %d.%d%cC\n",temp_int,temp_frag,186);

						  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc8);

						  // -----------------------------------------------------------------------------------------------------------------


            		};break;






            case'd':  {



           						 //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
           						 printf("\n set MPW2 BIAS voltages... \n");
           						 printf("enable CAR I2Cmux I2C3 ... \n");
           						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
           						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x08); 		// enable 3
           						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
           						 usleep(200);


           						 printf("set Bias_1 -> TH         ...\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x00, k[4]); usleep(200);
           						 printf("set Bias_2 -> BL         ...\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x02, k[2]); usleep(200);
           						 printf("set Bias_3 -> VN_EXT     ...\n"); 	    CARwrite_DAC7678_channel( 0x4a, 0x04, k[16]); usleep(200);
           						 printf("set Bias_4 -> VNCASC_EXT ...\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x06, k[17]); usleep(200);
           						 printf("set Bias_5 -> VNSF_EXT   ...\n");	 	CARwrite_DAC7678_channel( 0x4a, 0x01, k[18]); usleep(200);
           						 printf("set Bias_6 -> VPTRIM_EXT ...\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x03, k[19]); usleep(200);
           						 printf("set Bias_7 -> VPCOMP_EXT ...\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x05, k[20]); usleep(200);
           						 printf("set Bias_8 -> VSENSBIAS_EXT.\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x07, k[21]); usleep(200);

           						 printf("set Bias_9 -> VBLR_EXT   ...\n");	 	CARwrite_DAC7678_channel( 0x4c, 0x00, k[22]); usleep(200);
           						 printf("set Bias_10-> VNFB_CONT_EXT.\n"); 		CARwrite_DAC7678_channel( 0x4c, 0x02, k[23]); usleep(200);
           						 printf("set Bias_11-> VPFB_SW_EXT...\n"); 		CARwrite_DAC7678_channel( 0x4c, 0x04, k[24]); usleep(200);
           						 printf("set Bias_12-> VPBIAS_EXT ...\n"); 		CARwrite_DAC7678_channel( 0x4c, 0x06, k[25]); usleep(200);
           						 printf("set Bias_13-> SFOUTBUFF_THR_EXT ...\n"); 		CARwrite_DAC7678_channel( 0x4c, 0x01, k[26]); usleep(200);

           						 printf("\n");
                                   //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



           						 // start Configure PC -----------------------------------------------------------------------------------------------
            	 	 	 	 	 	 printf("\n enable CAR I2Cmux I2C2 ... \n");
                       			 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
                       			 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x04); 		// enable 2
                       			 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
                       			 usleep(200);
                       			 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(0x71<<1))+1); //read
                       			 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01);  			//STOP read 1 byte
                       			 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); /*printf("I2C status reg after start: %x\n",IIC_status_register);*/ }while (IIC_status_register != 0x88);
                                    MSDB = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));  printf("               I2Cmux: %x\n",MSDB);
                                    do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc8);



                           for (int k=0;k<64;k++) {
                                   sequ_pc[0]=0; sequ_pc[1]=0; sequ_pc[2]=0; sequ_pc[3]=0; sequ_pc[4]=0; sequ_pc[5]=0;

                                   sa = 6; a = k;//printf("VPCOMP = : "); scanf("%hd",&a); fflush(stdin); 44
           						sequ_pc[sa]=!((a>>5)&0x1);  sequ_pc[sa+1]=!((a>>4)&0x1);  sequ_pc[sa+2]=!((a>>3)&0x1);  sequ_pc[sa+3]=!((a>>2)&0x1);  sequ_pc[sa+4]=!((a>>1)&0x1);  sequ_pc[sa+5]=!(a&0x1);
           						//printf("%1x",sequ_pc[sa]); printf("%1x",sequ_pc[sa+1]); printf("%1x",sequ_pc[sa+2]); printf("%1x",sequ_pc[sa+3]); printf("%1x",sequ_pc[sa+4]); printf("%1x",sequ_pc[sa+5]); printf("\n");

           						sa = 12; a = k;//printf("VPTRIM = : "); scanf("%hd",&a); fflush(stdin);
           						sequ_pc[sa]=!((a>>5)&0x1);  sequ_pc[sa+1]=!((a>>4)&0x1);  sequ_pc[sa+2]=!((a>>3)&0x1);  sequ_pc[sa+3]=!((a>>2)&0x1);  sequ_pc[sa+4]=!((a>>1)&0x1);  sequ_pc[sa+5]=!(a&0x1);
           						//printf("%1x",sequ_pc[sa]); printf("%1x",sequ_pc[sa+1]); printf("%1x",sequ_pc[sa+2]); printf("%1x",sequ_pc[sa+3]); printf("%1x",sequ_pc[sa+4]); printf("%1x",sequ_pc[sa+5]); printf("\n");

           						sa = 18; a = k;//printf("VNSENSBIAS = : "); scanf("%hd",&a); fflush(stdin);
           						sequ_pc[sa]=!((a>>5)&0x1);  sequ_pc[sa+1]=!((a>>4)&0x1);  sequ_pc[sa+2]=!((a>>3)&0x1);  sequ_pc[sa+3]=!((a>>2)&0x1);  sequ_pc[sa+4]=!((a>>1)&0x1);  sequ_pc[sa+5]=!(a&0x1);
           						//printf("%1x",sequ_pc[sa]); printf("%1x",sequ_pc[sa+1]); printf("%1x",sequ_pc[sa+2]); printf("%1x",sequ_pc[sa+3]); printf("%1x",sequ_pc[sa+4]); printf("%1x",sequ_pc[sa+5]); printf("\n");

           						sa = 24; a = k;//printf("VBLR = : "); scanf("%hd",&a); fflush(stdin);
           						sequ_pc[sa]=!((a>>5)&0x1);  sequ_pc[sa+1]=!((a>>4)&0x1);  sequ_pc[sa+2]=!((a>>3)&0x1);  sequ_pc[sa+3]=!((a>>2)&0x1);  sequ_pc[sa+4]=!((a>>1)&0x1);  sequ_pc[sa+5]=!(a&0x1);
           						//printf("%1x",sequ_pc[sa]); printf("%1x",sequ_pc[sa+1]); printf("%1x",sequ_pc[sa+2]); printf("%1x",sequ_pc[sa+3]); printf("%1x",sequ_pc[sa+4]); printf("%1x",sequ_pc[sa+5]); printf("\n");

           						sa = 30; a = k;//printf("VNSF = : "); scanf("%hd",&a); fflush(stdin);
           						 sequ_pc[sa]=!((a>>5)&0x1);  sequ_pc[sa+1]=!((a>>4)&0x1);  sequ_pc[sa+2]=!((a>>3)&0x1);  sequ_pc[sa+3]=!((a>>2)&0x1);  sequ_pc[sa+4]=!((a>>1)&0x1);  sequ_pc[sa+5]=!(a&0x1);
           						//printf("%1x",sequ_pc[sa]); printf("%1x",sequ_pc[sa+1]); printf("%1x",sequ_pc[sa+2]); printf("%1x",sequ_pc[sa+3]); printf("%1x",sequ_pc[sa+4]); printf("%1x",sequ_pc[sa+5]); printf("\n");

           						sa = 36; a = k;//printf("VNFB_CONT = : "); scanf("%hd",&a); fflush(stdin);
           						sequ_pc[sa]=!((a>>5)&0x1);  sequ_pc[sa+1]=!((a>>4)&0x1);  sequ_pc[sa+2]=!((a>>3)&0x1);  sequ_pc[sa+3]=!((a>>2)&0x1);  sequ_pc[sa+4]=!((a>>1)&0x1);  sequ_pc[sa+5]=!(a&0x1);
           						//printf("%1x",sequ_pc[sa]); printf("%1x",sequ_pc[sa+1]); printf("%1x",sequ_pc[sa+2]); printf("%1x",sequ_pc[sa+3]); printf("%1x",sequ_pc[sa+4]); printf("%1x",sequ_pc[sa+5]); printf("\n");

           						sa = 42; a = k;//printf("VPFB_SW = : "); scanf("%hd",&a); fflush(stdin);
           						sequ_pc[sa]=!((a>>5)&0x1);  sequ_pc[sa+1]=!((a>>4)&0x1);  sequ_pc[sa+2]=!((a>>3)&0x1);  sequ_pc[sa+3]=!((a>>2)&0x1);  sequ_pc[sa+4]=!((a>>1)&0x1);  sequ_pc[sa+5]=!(a&0x1);
           						//printf("%1x",sequ_pc[sa]); printf("%1x",sequ_pc[sa+1]); printf("%1x",sequ_pc[sa+2]); printf("%1x",sequ_pc[sa+3]); printf("%1x",sequ_pc[sa+4]); printf("%1x",sequ_pc[sa+5]); printf("\n");

           						sa = 48; a = k;//printf("VPBIAS/VNCASC = : "); scanf("%hd",&a); fflush(stdin);
           						sequ_pc[sa]=!((a>>5)&0x1);  sequ_pc[sa+1]=!((a>>4)&0x1);  sequ_pc[sa+2]=!((a>>3)&0x1);  sequ_pc[sa+3]=!((a>>2)&0x1);  sequ_pc[sa+4]=!((a>>1)&0x1);  sequ_pc[sa+5]=!(a&0x1);
           						//printf("%1x",sequ_pc[sa]); printf("%1x",sequ_pc[sa+1]); printf("%1x",sequ_pc[sa+2]); printf("%1x",sequ_pc[sa+3]); printf("%1x",sequ_pc[sa+4]); printf("%1x",sequ_pc[sa+5]); printf("\n");

           						sa = 54; a = k;//printf("VN = : "); scanf("%hd",&a); fflush(stdin);
           						sequ_pc[sa]=!((a>>5)&0x1);  sequ_pc[sa+1]=!((a>>4)&0x1);  sequ_pc[sa+2]=!((a>>3)&0x1);  sequ_pc[sa+3]=!((a>>2)&0x1);  sequ_pc[sa+4]=!((a>>1)&0x1);  sequ_pc[sa+5]=!(a&0x1);
           						//printf("%1x",sequ_pc[sa]); printf("%1x",sequ_pc[sa+1]); printf("%1x",sequ_pc[sa+2]); printf("%1x",sequ_pc[sa+3]); printf("%1x",sequ_pc[sa+4]); printf("%1x",sequ_pc[sa+5]); printf("\n");




                                   // new fast config stream :////////////////////////////////////////////////////////////

                                   //config_word_a = 0x00021c08;
           						//config_word_b = 0x10204081;
           						//config_word_c = 0x0000000f;
           						//config_word_d = 0x0aa9652b;
           						//config_word_e = 0x594c9c80;

                                   config_word_a = 0x0;
                                   config_word_b = 0x0;
                                   config_word_c = 0x0;
                                   config_word_d = 0x0;
                                   config_word_e = 0x0;

                                   for (i=0;i<20;i++) {  if (sequ_pc[i+128]==1) config_word_a = config_word_a | (1 << i);  }
                                   for (i=0;i<32;i++) {  if (sequ_pc[i+96]==1)  config_word_b = config_word_b | (1 << i);  }
                                   for (i=0;i<32;i++) {  if (sequ_pc[i+64]==1)  config_word_c = config_word_c | (1 << i);  }
                                   for (i=0;i<32;i++) {  if (sequ_pc[i+32]==1)  config_word_d = config_word_d | (1 << i);  }
                                   for (i=0;i<32;i++) {  if (sequ_pc[i]==1)     config_word_e = config_word_e | (1 << i);  }




           					    // load 5 x 32 bit words:
                                *((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_a;
           						*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_b;
           						*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_c;
           						*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_d;
           						*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_e;


           						// send state machine start pulse
           						*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0xe1;//AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
           						*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0xe0;//AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1













                                   usleep(200);
                             	  	//setup byte MAX11617
                             		*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x35<<1) ); // MPW1chip_board_MAX1161x
                             		*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x2d0); 		 	 //  stop + setup_byte (int clock)
                             		do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);

                             		printf("   VN "); 	printf("= % 7.2f  ",chipboard_read_MAX1161x( 0x35, 0x00));
                             		printf("   VNCASC "); 	printf("= % 7.2f  ",chipboard_read_MAX1161x( 0x35, 0x01));
                             		printf("   VNSF "); 	printf("= % 7.2f  ",chipboard_read_MAX1161x( 0x35, 0x02));
                             		printf("   VPTRIM "); 	printf("= % 7.2f  ",chipboard_read_MAX1161x( 0x35, 0x03));
                             		printf("   VPCOMP "); 	printf("= % 7.2f  ",chipboard_read_MAX1161x( 0x35, 0x04));
                             		printf("   VNSENSBIAS "); 	printf("= % 7.2f  ",chipboard_read_MAX1161x( 0x35, 0x05));
                             		printf("   VBLR "); 	printf("= % 7.2f  ",chipboard_read_MAX1161x( 0x35, 0x06));
                             		printf("   VNFB_CONT "); 	printf("= % 7.2f  ",chipboard_read_MAX1161x( 0x35, 0x07));
                             		printf("   VPFB_SW "); 	printf("= % 7.2f  ",chipboard_read_MAX1161x( 0x35, 0x08));
                             		printf("   VPBIAS "); 	printf("= % 7.2f  ",chipboard_read_MAX1161x( 0x35, 0x09));
                             		printf("   VNCS_BB "); 	printf("= % 7.2f  ",chipboard_read_MAX1161x( 0x35, 0x0a));
                             		printf("\n");



                             		//readback PAD_SOUT_PC CTRL2_ptr
//           						printf("PAD_SOUT_PC readback[hex]:\n");
//           						for (i=0;i<5;i++) {
//           						  *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = i;
//           						  d=*((unsigned int *)(status0_ptr + status0_in_page_offset+0x0008)); printf("%08x",d);
//
//           						  if((i>0) & (i%6 == 0)) printf("\n");
//           						}
//           						printf("\n");
                                   //sleep(0.2);
                                   // end Configure PC -----------------------------------------------------------------------------------------------
                          }

                        };break;





           case'e':  {


            	       printf("\n\n start ABUFF_OUT sequence  ... \n");

            	       //s_AMUX_PWR <= (s_control_out(7));
            	       //s_AMUX_CLK <= (s_control_out(6)); !!!!  has to be low during case(3)
            	       //s_AMUX_INIT<= (s_control_out(5));

//            	       *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0x40; //AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1  idle state
//
//            	       *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0x60; //AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 0     // neg. edge INIT
//            	       *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0x40; //AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
//
//            	       for (i=0;i<10;i++) {
//            	         *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0x00; //AMUX_PWR = 1  AMUX_CLK = 0  AMUX_INIT = 1     // 10 clk cycles
//            	         *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0x40; //AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
//            	       }
//
//            	       *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0x00; //AMUX_PWR = 1  AMUX_CLK = 0  AMUX_INIT = 1     // 11th neg clk edge


            	       printf("\n\n start ABUFF_OUT sequence  ... \n");

					   *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0xe0; //AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1     // idle  state

					   *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0xc0; //AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 0     // neg. edge INIT
					   *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0xe0; //AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1

					   for (i=0;i<11;i++) {
					  // for (i=0;i<5;i++) {
						   printf("next = : "); scanf("%hd",&a); fflush(stdin);
						 *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0xa0; //AMUX_PWR = 1  AMUX_CLK = 0  AMUX_INIT = 1     // eleven clk cycles
						 *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0xe0; //AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
					   }

					   *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0xe0; //AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1     // idle  state






            };break;

            case'f':  {
					   printf("\n// init_TS ... \n");
					   *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0x10000000;
					   *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0x00000000;

            };break;

            case'g':  {
					   printf("\n// send init... \n");
					   *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0xc0; //AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 0     // neg. edge INIT
					   *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0xe0; //AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
            };break;

            case'h':  {
	 				   printf("\n// send clk... \n");
					   *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0xa0; //AMUX_PWR = 1  AMUX_CLK = 0  AMUX_INIT = 1     // clk cycle
					   *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0xe0; //AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
			};break;

            case'l':  {


            	      //disable UDP data taking  clears package counter
            		  *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x0;

            	      //*((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000; //
            	      d=*((unsigned int *)(status1_ptr + status1_in_page_offset+0x0));
            	            	          printf("\nUDP FIFO fill Level: :%4ld\n",(d>>2) & 0x3fff); printf("\n\n\n");


            	      printf("IDELAY (16)= "); scanf("%hd",&b);  fflush(stdin);
            	      printf("bitslip (1)= "); scanf("%hd",&a);  fflush(stdin);



            	      //printf("IDELAY_1 (6)= "); scanf("%hd",&sd);  fflush(stdin);
            	      //printf("bitslip_1 (0)= "); scanf("%hd",&sc);  fflush(stdin);
                      sd=14; sc=4;

                      *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = (b<<22) + (a<<9) + (sc<<6) + sd; //CNTVAL_IN

            	      *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x08000000 + (b<<22) + (a<<9); //[27] =1 LD SIN
            	      *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000;                    //[27] =0

            	      *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000020 + (sc<<6) + sd; //[5] =1 LD SIN_1
            	      *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000;                //[5] =0

            	      usleep(500);

            	      *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x40000000;  //[30] =1 clear code_err register
            	      *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000;  //[30] =0
            	      usleep(500);  //wait for code errors
            	      d=*((unsigned int *)(status1_ptr + status1_in_page_offset+0x0));

					   printf("\nReadBack: CNTval_OUT :%2ld     CNTval1_OUT :%2ld   code_err :%1ld   code_err1 :%1ld",
							   (d>>16) & 0x1f, (d>>21) & 0x1f ,(d>>26) & 0x1, (d>>27) & 0x1);  printf("\n\n\n");



					  for (i=0;i<2048;i++) { // clear Data FIFO

						*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO
						*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
					  }

					  	  	  	  	  //printf("\n enable CAR I2Cmux I2C3 ... \n");
					 				    *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
					 				    *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x08); 		// enable 3
					 				    do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
					 				    usleep(200);

					 				    printf("THR = "); scanf("%hd",&a);  fflush(stdin);   //read THR

					 				   						 printf("set Bias_1 -> DEL_HI     ...\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x00, 700); usleep(200);
					 				   						 printf("set Bias_2 -> TH         ...\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x02, a); usleep(200);
					 				   						 printf("set Bias_3 -> DEL_LO     ...\n"); 	    CARwrite_DAC7678_channel( 0x4a, 0x04, 900); usleep(200);
					 				   						 printf("set Bias_4 -> BL         ...\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x06, 900); usleep(200);

					 				    CARwrite_DAC7678_channel( 0x4f, 0x06, 1800);
					 				    usleep(1000);






					 CARwrite_DAC7678_channel( 0x4f, 0x06, 1800);		usleep(1000);  // set INJ Pulse height

					  *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x10000000; // start transmit SM
					  *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000; //



						//send INJECTION PULS
						*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x100e0; //INJ =1 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
						*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0xe0;    //INJ =0 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
						usleep(1000);



			///  set debug mode !!
//					  printf("\n enable CAR I2Cmux I2C2 ... \n");
//					  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x04);
//					  for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));printf("I2C status reg after start: %x\n",IIC_status_register); }//while (IIC_status_register != 0xc0);
//					  usleep(200);
//					  printf("xx2\n");
//
//
//
//					  //TX_CTRL                                           // START +  CHIP_ADDR Write                                               //SubAddr[15..8]                                              //SubAddr[7..0]
//					 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( CHIP_ADDR<<1));   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x04;  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x03;
//					 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x06);     do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for BUS free
//																		 // STOP  + [0] normal readout      [1]  debug mode    [2] = flush fifo active low !!
//					 usleep(50);

		///    end debug mode !!

					  //TX_CTRL                                           // START +  CHIP_ADDR Write                                               //SubAddr[15..8]                                              //SubAddr[7..0]
		//			 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( CHIP_ADDR<<1));   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x04;  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x03;
		//			 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x05);     do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for BUS free
																		 // STOP  + [0] normal readout      [1]  debug mode    [2] = flush fifo active low !!
		//			 usleep(50);

          ///



					//read SOF
					*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO
					*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
					data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0));
					printf("          SIN     %8lx  ",data);
					data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0008));
					printf("                                              : SIN1    %8lx  \n",data);
					//read Data
					for (i=0;i<7;i++) {
					  *((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO
					  *((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
					  data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0));
					  //printf("%3d.Data: SIN    %8lx  ",i,data);
					  printf("        : SIN     %8lx      DC=%2ld   PX=%3ld   TST=%3ld   TSL=%3ld",data, (data >>24)&0x1f, (data >>16)&0x7f, (data >>8)&0xff, (data&0xff) );
					  data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0008));
					  printf("        : SIN1    %8lx      DC=%2ld   PX=%3ld   TST=%3ld   TSL=%3ld\n",data, (data >>24)&0x1f, (data >>16)&0x7f, (data >>8)&0xff, (data&0xff) );
					}
					  //read EOF
					*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO
					*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
					data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0));
					printf("          SIN     %8lx  ",data);
					data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0008));
					printf("                                              : SIN1    %8lx  \n",data);

				    d=*((unsigned int *)(status1_ptr + status1_in_page_offset+0x0));
				    printf("ReadBack: CNTval_OUT :%2ld     CNTval1_OUT :%2ld   code_err :%1ld   code_err1 :%1ld",
						   (d>>16) & 0x1f, (d>>21) & 0x1f ,(d>>26) & 0x1, (d>>27) & 0x1);  printf("\n");


					usleep(5000); //wait and enable UDP data taking
					*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x1;


            };break;

            case'm':  {

            	      printf("\n// write MPW3_sim_data... \n");

            	     *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x10 )) =  0x000000a5; //receive register
            	     *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x18 )) =  0x000000a5; //transmit register
            	     printf("reset FIFO....\n");

            	     *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x10 )) =  0x000000a5; //receive register
					 *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x18 )) =  0x000000a5; //transmit register
					 printf("reset FIFO1....\n");

//					 //printf("\n enable CAR I2Cmux I2C3 ... \n");
//					     					 				    *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
//					     					 				    *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x08); 		// enable 3
//					     					 				    do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
//					     					 				    usleep(200);
//
//					     					 				    //printf("THR = "); scanf("%hd",&a);  fflush(stdin);   //read THR
//
//					     					 				   						 printf("set Bias_1 -> DEL_HI     ...\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x00, 700); usleep(200);
//					     					 				   						 printf("set Bias_2 -> TH         ...\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x02, 1250); usleep(200);
//					     					 				   						 printf("set Bias_3 -> DEL_LO     ...\n"); 	    CARwrite_DAC7678_channel( 0x4a, 0x04, 900); usleep(200);
//					     					 				   						 printf("set Bias_4 -> BL         ...\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x06, 900); usleep(200);
//
//					     					 				    CARwrite_DAC7678_channel( 0x4f, 0x06, 1800); // set INJ Pulse height
//					     					 				    usleep(1000);
//



					 for (i=0;i<2048;i++) { // clear Data FIFO
						*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO
						*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
					  }


					 *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x100000e1; //init_Ts = 1  AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1   enable Data taking =1
					 *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x000000e1; //init_TS = 0  AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1   enable Data taking =1



					 for (j=0;j<6;j++){//6


					             	    	  *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x10000000; // start transmit SM
					             	    	  *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000; //



//					             	         if (j==3) { // send init_TS
//					             	        	  //send INJECTION PULS
//					 												*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x100100e1; //init_Ts = 1 //INJ =1 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1   enable Data taking =1
//					 												*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x100000e1; //init_TS = 1 //INJ =0 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1   enable Data taking =1
//					 												usleep(10);
//					             	         }
//					             	         else {
					             	         //send INJECTION PULS
					             	       						*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x100e1; //INJ =1 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1   enable Data taking =1
					             	       						*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x000e1;    //INJ =0 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1   enable Data taking =1
					             	       						usleep(10);
					             	       					    *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x080100e1;//   software trigger =1 INJ =1 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1   enable Data taking =1
					             	       				        *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x000000e1; //  software trigger =0 INJ =0 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1   enable Data taking =1
					             	       			            usleep(10);
//					             	         }


					             	      } //end j

            	      //read SOF
					*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO
					*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
					data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0));
					printf("        : SIN     %8lx  ",data);
					data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0008));
					printf("                                                          : SIN1    %8lx  \n",data);
					//read Data
					  for (i=0;i<600;i++) {
						*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO
					  *((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
					  data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0));
					  if ((data == 0) || ((data&0xff000000) == 0xaf000000 ) ||((data&0xff000000) == 0xe0000000 ) ) printf("        : SIN     %8lx                                                    ",data);
					  else           printf("        : SIN     %8lx      DC=%2ld   PX=%3ld   TST=%3ld   TSL=%3ld    TOT=%4ld",data, (data >>24)&0x1f, (data >>16)&0x7f, (data >>8)&0xff, (data&0xff), ( ((data >>8)&0xff)) - (data&0xff) );

					  data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0008));
					  if ((data == 0) || ((data&0xff000000) == 0xaf000000 ) ||((data&0xff000000) == 0xe0000000 ) ) printf("        : SIN1    %8lx                                                   \n",data);
					  else           printf("        : SIN1    %8lx      DC=%2ld   PX=%3ld   TST=%3ld   TSL=%3ld\n",data, (data >>24)&0x1f, (data >>16)&0x7f, (data >>8)&0xff, (data&0xff) );
					  }
					  //read EOF
					*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO
					*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
					data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0));
					printf("        : SIN     %8lx  ",data);
					data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0008));
					printf("                                                          : SIN1    %8lx  \n",data);





            	      d=*((unsigned int *)(status1_ptr + status1_in_page_offset+0x0));
            	          printf("\nUDP FIFO fill Level: :%4ld\n",(d>>2) & 0x3fff); printf("\n\n\n");


            	      //AXI FIFO
            	      // Read value from FIFO////////////////////////////////////////////////////////////
					  value = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x1c )); printf("receive data FIFO occupancy register: %4d\n",value);
					  printf("reading FIFO....\n");
					  if (value) {
					  //for (i=0;i<value*4;i+=4) { //read 4 bytes
					  for (i=0;i<16*4;i+=4) { //read 4 bytes
						 data = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x20));
						 printf("        : SIN_AXI_FIFO    %8lx  \n",data);
					  }
					  }
						  //AXI FIFO
						  // Read value from FIFO1////////////////////////////////////////////////////////////
						 value = *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x1c )); printf("receive data FIFO1 occupancy register: %4d\n",value);
						 printf("reading FIFO1....\n");

						 if (value) {
						// for (i=0;i<value*4;i+=4) { //read 4 bytes
						 for (i=0;i<16*4;i+=4) { //read 4 bytes
							 data = *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x20));
							 printf("        : SIN1_AXI_FIFO    %8lx  \n",data);
                         }
						 }

						 *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x1;


            };break;

            case'i':  {

                        	      printf("\n// discharge test... \n");

                        	     *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x10 )) =  0x000000a5; //receive register
                        	     *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x18 )) =  0x000000a5; //transmit register
                        	     printf("reset FIFO....\n");

                        	     *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x10 )) =  0x000000a5; //receive register
            					 *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x18 )) =  0x000000a5; //transmit register
            					 printf("reset FIFO1....\n");

            					 //printf("\n enable CAR I2Cmux I2C3 ... \n");
            					     					 				    *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
            					     					 				    *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x08); 		// enable 3
            					     					 				    do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
            					     					 				    usleep(200);

            					     					 				    printf("THR = "); scanf("%hd",&a);  fflush(stdin);   //read THR

            					     					 				   						 printf("set Bias_1 -> DEL_HI     ...\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x00, 700); usleep(200);
            					     					 				   						 printf("set Bias_2 -> TH         ...\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x02, a); usleep(200);
            					     					 				   						 printf("set Bias_3 -> DEL_LO     ...\n"); 	    CARwrite_DAC7678_channel( 0x4a, 0x04, 900); usleep(200);
            					     					 				   						 printf("set Bias_4 -> BL         ...\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x06, 900); usleep(200);

            					     					 				    CARwrite_DAC7678_channel( 0x4f, 0x06, 1800); // set INJ Pulse height
            					     					 				    usleep(1000);



		  //***************************** init AXI IIC ; set I2Cmux on ZC706 to FMC_HPC; enable all four ports on CAR board I2Cmux *******************************//

						 //*((unsigned int*)(IIC_ptr + IIC_page_offset+0x040)) = 0x0a; // soft reset

						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x120)) = 0x0f; // set IIC RX_FIFO DEPTH to max 0xf
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x02; // reset IIC TX_FIFO
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x01; // enable AXI IIC

						  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); printf("I2C status reg after reset: %x\n",IIC_status_register);

						  printf("set I2Cmux on ZC706 to FMC HPC ... \n");
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x74<<1)); // U65 ZC706 I2Cmux
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x20); 		// enable II2C FMC HPC
						 for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));printf("I2C status reg after start: %x\n",IIC_status_register); }//while (IIC_status_register != 0xc0);

						  usleep(200);

						  printf("\n enable CAR I2Cmux I2C2 ... \n");
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x04);
						  for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));printf("I2C status reg after start: %x\n",IIC_status_register); }//while (IIC_status_register != 0xc0);
						  usleep(200);
						  printf("xx1\n");


						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x120)) = 0x0f; // set IIC RX_FIFO DEPTH to max 0xf
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x02; // reset IIC TX_FIFO
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x01; // enable AXI IIC

						  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); printf("I2C status reg after reset: %x\n",IIC_status_register);

						  printf("set I2Cmux on ZC706 to FMC HPC ... \n");
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x74<<1)); // U65 ZC706 I2Cmux
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x20); 		// enable II2C FMC HPC
						  for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));printf("I2C status reg after start: %x\n",IIC_status_register); }//while (IIC_status_register != 0xc0);

						  usleep(200);

						  printf("\n enable CAR I2Cmux I2C2 ... \n");
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x04);
						  for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));printf("I2C status reg after start: %x\n",IIC_status_register); }//while (IIC_status_register != 0xc0);
						  usleep(200);
						  printf("xx2\n");







						//CONF_REG_TSINI                                    // START +  CHIP_ADDR Write                                               //SubAddr[15..8]                                              //SubAddr[7..0]
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( CHIP_ADDR<<1));   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x04;  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x00;
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x00);     do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for BUS free
																			 // STOP  + [7..0] timestamp counter set value
						 usleep(500);// EEPROM test !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
						 //CONF_REG_TSCTRL                                    // START +  CHIP_ADDR Write                                               //SubAddr[15..8]                                              //SubAddr[7..0]
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( CHIP_ADDR<<1));   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x04;  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x01;
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x00);     do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for BUS free
																			 // STOP  + [0] unused [1] 0/1 start counting / stop counting      [2]  0/1  enable/disable slow control set
						 usleep(500);// EEPROM test !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


                        	      for (j=0;j<500;j++){


                        	    	  for (i=0;i<512;i++) { // clear Data FIFO
                        	    		  *((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO
                        	    		  *((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
                        	    	  }




                        	    	  *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x10000000; // start transmit SM
                        	    	  *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000; //

                        	    	  //send INJECTION PULS
                        	    	  						*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x100e0; //INJ =1 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
                        	    	  						*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0xe0;    //INJ =0 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
                        	    	  						usleep(1000);

                        	    	    //read SOF
            							*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO
            							*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
            							data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0));
            							printf(" %4d:  : SIN     %8lx  ",j,data);
            							data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0008));
            							printf("                                              : SIN1    %8lx  \n",data);
            							//read Data
            							  for (i=0;i<7;i++) {
            								*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO
            							  *((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
            							  data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0));
            							  if ((data == 0) || ((data&0xffffff00) == 0xaf000000 ) ||((data&0xffffff00) == 0xe0000000 ) ) printf("        : SIN     %8lx                                        ",data);
            							  else           printf("        : SIN     %8lx      DC=%2ld   PX=%3ld   TST=%3ld   TSL=%3ld",data, (data >>24)&0x1f, (data >>16)&0x7f, (data >>8)&0xff, (data&0xff) );

            							  data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0008));
            							  if (data == 0) printf("        : SIN     %8lx                                        ",data);
            							  else           printf("        : SIN1    %8lx      DC=%2ld   PX=%3ld   TST=%3ld   TSL=%3ld\n",data, (data >>24)&0x1f, (data >>16)&0x7f, (data >>8)&0xff, (data&0xff) );
            							  }
            							  //read EOF
            							*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO
            							*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
            							data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0));
            							printf("        : SIN     %8lx  ",data);
            							data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0008));
            							printf("                                              : SIN1    %8lx  \n",data);


                        	      } //end j

                        	      d=*((unsigned int *)(status1_ptr + status1_in_page_offset+0x0));
                        	          printf("\nUDP FIFO fill Level: :%4ld\n",(d>>2) & 0x3fff); printf("\n\n\n");


                        	      //AXI FIFO
                        	      // Read value from FIFO////////////////////////////////////////////////////////////
            					  value = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x1c )); printf("receive data FIFO occupancy register: %4d\n",value);
            					  printf("reading FIFO....\n");

            					  for (i=0;i<value*4;i+=4) { //read 4 bytes
            						 data = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x20));
            						 //printf("        : SIN_AXI_FIFO    %8lx  \n",data);
            					  }

            						  //AXI FIFO
            						  // Read value from FIFO1////////////////////////////////////////////////////////////
            						 value = *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x1c )); printf("receive data FIFO1 occupancy register: %4d\n",value);
            						 printf("reading FIFO1....\n");

            						 for (i=0;i<value*4;i+=4) { //read 4 bytes
            							 data = *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x20));
            							// printf("        : SIN1_AXI_FIFO    %8lx  \n",data);
                                     }


					//CONF_REG_TSINI                                    // START +  CHIP_ADDR Write                                               //SubAddr[15..8]                                              //SubAddr[7..0]
					 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( CHIP_ADDR<<1));   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x04;  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x00;
					 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x00);     do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for BUS free
																		 // STOP  + [7..0] timestamp counter set value
					 usleep(500);// EEPROM test !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
					 //CONF_REG_TSCTRL                                    // START +  CHIP_ADDR Write                                               //SubAddr[15..8]                                              //SubAddr[7..0]
					 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( CHIP_ADDR<<1));   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x04;  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x01;
					 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x02);     do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for BUS free
																		 // STOP  + [0] unused [1] 0/1 start counting / stop counting      [2]  0/1  enable/disable slow control set
					 usleep(500);// EEPROM test !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!





            						 for (j=0;j<500;j++){


												  for (i=0;i<512;i++) { // clear Data FIFO
													  *((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO
													  *((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
												  }




												  *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x10000000; // start transmit SM
												  *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000; //

												  //send INJECTION PULS
																		*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x100e0; //INJ =1 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
																		*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0xe0;    //INJ =0 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
																		usleep(1000);

													//read SOF
													*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO
													*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
													data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0));
													printf(" %4d:  : SIN     %8lx  ",j,data);
													data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0008));
													printf("                                              : SIN1    %8lx  \n",data);
													//read Data
													  for (i=0;i<7;i++) {
														*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO
													  *((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
													  data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0));
													  if ((data == 0) || ((data&0xffffff00) == 0xaf000000 ) ||((data&0xffffff00) == 0xe0000000 ) ) printf("        : SIN     %8lx                                        ",data);
													  else           printf("        : SIN     %8lx      DC=%2ld   PX=%3ld   TST=%3ld   TSL=%3ld",data, (data >>24)&0x1f, (data >>16)&0x7f, (data >>8)&0xff, (data&0xff) );

													  data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0008));
													  if (data == 0) printf("        : SIN     %8lx                                        ",data);
													  else           printf("        : SIN1    %8lx      DC=%2ld   PX=%3ld   TST=%3ld   TSL=%3ld\n",data, (data >>24)&0x1f, (data >>16)&0x7f, (data >>8)&0xff, (data&0xff) );
													  }
													  //read EOF
													*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO
													*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
													data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0));
													printf("        : SIN     %8lx  ",data);
													data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0008));
													printf("                                              : SIN1    %8lx  \n",data);


											  } //end j

											  d=*((unsigned int *)(status1_ptr + status1_in_page_offset+0x0));
												  printf("\nUDP FIFO fill Level: :%4ld\n",(d>>2) & 0x3fff); printf("\n\n\n");


											  //AXI FIFO
											  // Read value from FIFO////////////////////////////////////////////////////////////
											  value = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x1c )); printf("receive data FIFO occupancy register: %4d\n",value);
											  printf("reading FIFO....\n");

											  for (i=0;i<value*4;i+=4) { //read 4 bytes
												 data = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x20));
												 //printf("        : SIN_AXI_FIFO    %8lx  \n",data);
											  }

												  //AXI FIFO
												  // Read value from FIFO1////////////////////////////////////////////////////////////
												 value = *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x1c )); printf("receive data FIFO1 occupancy register: %4d\n",value);
												 printf("reading FIFO1....\n");

												 for (i=0;i<value*4;i+=4) { //read 4 bytes
													 data = *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x20));
													// printf("        : SIN1_AXI_FIFO    %8lx  \n",data);
												  }




                        };break;



            case'o': {
            	 *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00200000; // bit(21) // push UDP package
            	 *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000; //

            	                 //***************************** init AXI IIC ; set I2Cmux on ZC706 to FMC_HPC; enable all four ports on CAR board I2Cmux *******************************//

            	            	 //*((unsigned int*)(IIC_ptr + IIC_page_offset+0x040)) = 0x0a; // soft reset

            					  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x120)) = 0x0f; // set IIC RX_FIFO DEPTH to max 0xf
            					  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x02; // reset IIC TX_FIFO
            					  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x01; // enable AXI IIC

            					  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); printf("I2C status reg after reset: %x\n",IIC_status_register);

            					  printf("set I2Cmux on ZC706 to FMC HPC ... \n");
            					  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x74<<1)); // U65 ZC706 I2Cmux
            					  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x20); 		// enable II2C FMC HPC
            					 for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));printf("I2C status reg after start: %x\n",IIC_status_register); }//while (IIC_status_register != 0xc0);

            					  usleep(200);

            					  printf("\n enable CAR I2Cmux I2C2 ... \n");
            					  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x04);
            					  for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));printf("I2C status reg after start: %x\n",IIC_status_register); }//while (IIC_status_register != 0xc0);
            					  usleep(200);
            					  printf("xx1\n");


            					  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x120)) = 0x0f; // set IIC RX_FIFO DEPTH to max 0xf
            					  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x02; // reset IIC TX_FIFO
            					  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x01; // enable AXI IIC

            				      IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); printf("I2C status reg after reset: %x\n",IIC_status_register);

            				      printf("set I2Cmux on ZC706 to FMC HPC ... \n");
            					  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x74<<1)); // U65 ZC706 I2Cmux
            					  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x20); 		// enable II2C FMC HPC
            					  for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));printf("I2C status reg after start: %x\n",IIC_status_register); }//while (IIC_status_register != 0xc0);

            					  usleep(200);

            					  printf("\n enable CAR I2Cmux I2C2 ... \n");
            					  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x04);
            					  for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));printf("I2C status reg after start: %x\n",IIC_status_register); }//while (IIC_status_register != 0xc0);
            					  usleep(200);
            					  printf("xx2\n");







            	  printf("\n read from MPW3 REG ... \n");
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(CHIP_ADDR<<1));     //write
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x04;  	    			//address byte
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x00;  	    			//address byte
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(CHIP_ADDR<<1))+1); //repeated start read
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x4);  		//STOP read 4 bytes

				  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); /*printf("I2C status reg after start: %x\n",IIC_status_register)*/;}while (IIC_status_register != 0x88);

				  for (i=0;i<4;i++) {  IIC_RX_fifo = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));  printf(" REG 0x04%02x:    %02x\n",i,IIC_RX_fifo);}

				  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); usleep(1000);}while (IIC_status_register != 0xc8);
				  printf("\n");

				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(CHIP_ADDR<<1));     //write
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x04;  	    			//address byte
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x06;  	    			//address byte
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(CHIP_ADDR<<1))+1); //repeated start read
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x4);  		//STOP read 4 bytes

				  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); /*printf("I2C status reg after start: %x\n",IIC_status_register)*/;}while (IIC_status_register != 0x88);

				  for (i=6;i<10;i++) {  IIC_RX_fifo = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));  printf(" REG 0x04%02x:    %02x\n",i,IIC_RX_fifo);}

				  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); usleep(1000);}while (IIC_status_register != 0xc8);
				  printf("\n");

				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(CHIP_ADDR<<1));     //write
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x04;  	    			//address byte
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x0c;  	    			//address byte
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(CHIP_ADDR<<1))+1); //repeated start read
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x5);  		//STOP read 4 bytes

				  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); /*printf("I2C status reg after start: %x\n",IIC_status_register)*/;}while (IIC_status_register != 0x88);

				  for (i=12;i<17;i++) {  IIC_RX_fifo = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));  printf(" REG 0x04%02x:    %02x\n",i,IIC_RX_fifo);}

				  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); usleep(1000);}while (IIC_status_register != 0xc8);
				  printf("\n");




            };break;

            case'p':  {

            	      int bitslip_base = 0;
                      int window_center_base = 0;
                      int bitslip_piggy = 0;
            		  int window_center_piggy = 0;

					  //disable UDP data taking  clears package counter
					  *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x0;

					  for (int bitslip=0;bitslip<5;bitslip++) {

						  a=sc=bitslip;

						  printf("Phase Scan: bitslip=%1d ...... \n",bitslip);
						  printf("CntVal:  ");
						  for (b=0;b<32;b++) {
								sd=b;



								  *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = (b<<22) + (a<<9) + (sc<<6) + sd; //CNTVAL_IN

								  *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x08000000 + (b<<22) + (a<<9); //[27] =1 LD SIN
								  *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000;                    //[27] =0

								  *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000020 + (sc<<6) + sd; //[5] =1 LD SIN_1
								  *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000;                //[5] =0

								  usleep(500);

								  *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x40000000;  //[30] =1 clear code_err register
								  *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000;  //[30] =0
								  usleep(50000);  //wait for code errors
								  d=*((unsigned int *)(status1_ptr + status1_in_page_offset+0x0));
								  //printf("ReadBack: CNTval_OUT :%2ld     CNTval1_OUT :%2ld   code_err :%1ld   code_err1 :%1ld",
								  //		   (d>>16) & 0x1f, (d>>21) & 0x1f ,(d>>26) & 0x1, (d>>27) & 0x1);
								  printf(" %2ld",(d>>16) & 0x1f); fflush(stdout);

								  delay[b][0] = (d>>16) & 0x1f;
								  delay[b][1] = (d>>21) & 0x1f;
								  delay[b][2] = (d>>26) & 0x1;
								  delay[b][3] = (d>>27) & 0x1;


							}

							printf("\n\n");

							int window_low = 0; int window_high = 31;
							printf("    Base:");  printf(" %2d",delay[0][2]);
							for (i=1;i<32;i++) {  printf(" %2d",delay[i][2]);
							                      if (( delay[i-1][2] == 1) && (delay[i][2] == 0) )  window_low = i;
							                      if (( delay[i-1][2] == 0) && (delay[i][2] == 1) )  window_high = i;
							                   }  //printf("\n");
							                   if (( window_low == 0) && (window_high == 31)) printf(" no window \n");
							                   else { window_center_base = window_low + ((window_high - window_low)/2); printf(" Size = %2d  Center =  %2d\n",(window_high - window_low),window_center_base); bitslip_base = bitslip; }

							window_low = 0; window_high = 31;
							printf("   Piggy:"); printf(" %2d",delay[0][3]);
							for (i=1;i<32;i++) { printf(" %2d",delay[i][3]);
							                     if (( delay[i-1][3] == 1) && (delay[i][3] == 0) )  window_low = i;
										         if (( delay[i-1][3] == 0) && (delay[i][3] == 1) )  window_high = i;
											   }  //printf("\n");
											   if (( window_low == 0) && (window_high == 31)) printf(" no window \n");
											   else { window_center_piggy = window_low + ((window_high - window_low)/2); printf(" Size = %2d  Center =  %2d\n",(window_high - window_low),window_center_piggy); bitslip_piggy = bitslip; }
							printf("\n\n\n");

					   } //bitslip


					  printf(" %2d %2d\n", bitslip_base,  window_center_base  );
					  printf(" %2d %2d\n", bitslip_piggy, window_center_piggy );

					                      //disable UDP data taking  clears package counter
					             		  *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x0;

					             	      //*((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000; //
					             	      d=*((unsigned int *)(status1_ptr + status1_in_page_offset+0x0));
					             	            	          printf("\nUDP FIFO fill Level: :%4ld\n",(d>>2) & 0x3fff); printf("\n\n\n");

                                          a = bitslip_base;
					             	      b = window_center_base;

					             	     g_bitslip_base = bitslip_base;
					             	     g_window_center_base = window_center_base;

					             	      sc = bitslip_piggy;
					             	      sd = window_center_piggy;


					                      *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = (window_center_base<<22) + (bitslip_base<<9) + (bitslip_piggy<<6) + window_center_piggy; //CNTVAL_IN

					             	      *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x08000000 + (window_center_base<<22) + (bitslip_base<<9); //[27] =1 LD SIN
					             	      *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000;                                                //[27] =0

					             	      *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000020 + (bitslip_piggy<<6) + window_center_piggy;   //[5] =1 LD SIN_1
					             	      *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000;                                              //[5] =0

					             	      usleep(500);

					             	      *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x40000000;  //[30] =1 clear code_err register
					             	      *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000;  //[30] =0
					             	      usleep(500);  //wait for code errors
					             	      d=*((unsigned int *)(status1_ptr + status1_in_page_offset+0x0));

					 					   printf("\nReadBack: CNTval_OUT :%2ld     CNTval1_OUT :%2ld   code_err :%1ld   code_err1 :%1ld",
					 							   (d>>16) & 0x1f, (d>>21) & 0x1f ,(d>>26) & 0x1, (d>>27) & 0x1);  printf("\n\n\n");


			  *((unsigned int*)(AXI_REG_ARRAY_ptr + AXI_REG_ARRAY_page_offset+0x04)) = 0x0;    //s_reg_b_out

					 					  for (i=0;i<2048;i++) { // clear Data FIFO

					 						*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO
					 						*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
					 					  }


					 					  *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x10000000; // start transmit SM
					 					  *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000; //



					 						//send INJECTION PULS
					 						*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x100e0; //INJ =1 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
					 						*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0xe0;    //INJ =0 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
					 						usleep(1000);


					 			///  set debug mode !!
					 //					  printf("\n enable CAR I2Cmux I2C2 ... \n");
					 //					  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x04);
					 //					  for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));printf("I2C status reg after start: %x\n",IIC_status_register); }//while (IIC_status_register != 0xc0);
					 //					  usleep(200);
					 //					  printf("xx2\n");
					 //
					 //
					 //
					 //					  //TX_CTRL                                           // START +  CHIP_ADDR Write                                               //SubAddr[15..8]                                              //SubAddr[7..0]
					 //					 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( CHIP_ADDR<<1));   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x04;  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x03;
					 //					 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x06);     do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for BUS free
					 //																		 // STOP  + [0] normal readout      [1]  debug mode    [2] = flush fifo active low !!
					 //					 usleep(50);

					 		///    end debug mode !!

					 					  //TX_CTRL                                           // START +  CHIP_ADDR Write                                               //SubAddr[15..8]                                              //SubAddr[7..0]
					 		//			 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( CHIP_ADDR<<1));   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x04;  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x03;
					 		//			 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x05);     do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for BUS free
					 																		 // STOP  + [0] normal readout      [1]  debug mode    [2] = flush fifo active low !!
					 		//			 usleep(50);

					           ///



					 					//read SOF
					 					*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO
					 					*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
					 					data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0));
					 					printf("          SIN     %8lx  ",data);
					 					data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0008));
					 					printf("                                              : SIN1    %8lx  \n",data);
					 					//read Data
					 					for (i=0;i<7;i++) {
					 					  *((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO
					 					  *((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
					 					  data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0));
					 					  //printf("%3d.Data: SIN    %8lx  ",i,data);
					 					  printf("        : SIN     %8lx      DC=%2ld   PX=%3ld   TST=%3ld   TSL=%3ld",data, (data >>24)&0x1f, (data >>16)&0x7f, (data >>8)&0xff, (data&0xff) );
					 					  data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0008));
					 					  printf("        : SIN1    %8lx      DC=%2ld   PX=%3ld   TST=%3ld   TSL=%3ld\n",data, (data >>24)&0x1f, (data >>16)&0x7f, (data >>8)&0xff, (data&0xff) );
					 					}
					 					  //read EOF
					 					*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO
					 					*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
					 					data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0));
					 					printf("          SIN     %8lx  ",data);
					 					data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0008));
					 					printf("                                              : SIN1    %8lx  \n",data);

					 				    d=*((unsigned int *)(status1_ptr + status1_in_page_offset+0x0));
					 				    printf("ReadBack: CNTval_OUT :%2ld     CNTval1_OUT :%2ld   code_err :%1ld   code_err1 :%1ld",
					 						   (d>>16) & 0x1f, (d>>21) & 0x1f ,(d>>26) & 0x1, (d>>27) & 0x1);  printf("\n");


					 					usleep(5000); //wait and enable UDP data taking
					 					*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x1;


                       };break;



            case'q':  {

            	testdata[0]=  testdata[9]= testdata[18]= testdata[27]= 0xaf0000cc;
            	testdata[1]= testdata[10]= testdata[19]= testdata[28]= 0x101f0603;
				testdata[2]= testdata[11]= testdata[20]= testdata[29]= 0x11200603;
				testdata[3]= testdata[12]= testdata[21]= testdata[30]= 0x1120130f;
				testdata[4]= testdata[13]= testdata[22]= testdata[31]= 0x12220603;
				testdata[5]= testdata[14]= testdata[23]= testdata[32]= 0x1223130f;
				testdata[6]= testdata[15]= testdata[24]= testdata[33]= 0x12241917;
				testdata[7]= testdata[16]= testdata[25]= testdata[34]= 0x13250603;
				testdata[8]= testdata[17]= testdata[26]= testdata[35]= 0xe00000cc;

                int error =0;




                clock_t start, end;
                double cpu_time_used;

                start = clock();
                printf("CLOCKS_PER_SEC: %ld \n",CLOCKS_PER_SEC);
                printf("start: %ld \n",start);

                for (int l=0; l<1000000; l++) {

	 				*((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x10 )) =  0x000000a5; //receive register
					*((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x18 )) =  0x000000a5; //transmit register
					//printf("reset FIFO....\n");

					*((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x10 )) =  0x000000a5; //receive register
					*((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x18 )) =  0x000000a5; //transmit register
					//printf("reset FIFO1....\n");


					// start transmit SM for test data
					*((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x10000000;
					*((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000; // Event1

					*((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x10000000;
					*((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000; // Event2

					*((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x10000000;
					*((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000; // Event3

					*((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x10000000;
					*((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000; // Event4

					usleep(500);

					  //AXI FIFO
					  // Read value from FIFO////////////////////////////////////////////////////////////
					  value = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x1c )); //printf("receive data FIFO occupancy register: %4d\n",value);
					  //printf("reading FIFO....\n");

					  for (i=0;i<value*4;i+=4) { //read 4 bytes
						 data = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x20));

						 if (data != testdata[i/4]) {  printf("ERROR %8lx       : SIN_AXI_FIFO    %8lx  \n",testdata[i/4],data);   error++;}
					  }


                  if(!(l%1000)) printf("loop %7d\n",l);

                }
                printf("Number of errors: %7d \n",error);

                end = clock();
                printf("end: %ld \n",end);
                cpu_time_used = ((double) (end - start)) / 50000;
                printf("time used: %f \n",cpu_time_used);

		   };break;


            case'u':  {

            	SI5345_REVB_config();

            	   printf("\n\n start ABUFF_OUT sequence  ... \n");
				   *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0xe0; //AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1     // idle  state
				   *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0xc0; //AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 0     // neg. edge INIT
				   *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0xe0; //AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
				   for (i=0;i<11;i++) {
					 *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0xa0; //AMUX_PWR = 1  AMUX_CLK = 0  AMUX_INIT = 1     // eleven clk cycles
					 *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0xe0; //AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
				   }
				   *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0xe0; //AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1     // idle  state




				printf("IDELAY(20) = "); scanf("%hd",&b);  fflush(stdin);
                //b=20;
				//set IDELAY

				*((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = (b<<16); //CNTVAL_IN

				*((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x20000000 + (b<<16) ; //[29] =1 LD
				*((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000 + (b<<16) ; //[29] =0

				d=*((unsigned int *)(status0_ptr + status0_in_page_offset+0x0)); printf("%08lx       ",d);
									  bin((d>>16) & 0x3fff); printf("\n");


				// talk to AD9249 over SC18IS602 I2C/SPI bridge:

				printf("\n enable CAR I2Cmux I2C0 ... \n");
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01); 		// enable 0
				do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
				usleep(200);

				printf("\n configure SPI port ... \n");
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x28<<1));     	// I2Caddr=0x28
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0xf0);                   //
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x02);  			// SPI frequency = 115kHz  using Mode 0
				do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);



				//--------------------------------------------------------------------------------------------------------------------------------------
				printf(" set device index to program channels H1/2 G1/2 F1/2 and E1/2... \n");
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x28<<1));     	// I2Caddr=0x28
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);                   // SS0
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x00);                   // write,W0=0
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x04);                   // register 0x04
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x0f);  			// all channels set
				do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

				printf(" set device index to program channels D1/2 C1/2 B1/2 and A1/2... \n");
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x28<<1));     	// I2Caddr=0x28
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);                   // SS0
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x00);                   // write,W0=0
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x05);                   // register 0x05
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x0f);  			// all channels set
				do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

				printf(" set device index to program channels D1/2 C1/2 B1/2 and A1/2... \n");
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x28<<1));     	// I2Caddr=0x28
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);                   // SS0
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x00);                   // write,W0=0
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x14);                   // register 0x14
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x00);  			// offset binary mode
				do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

				printf(" set test mode on all channels... \n");
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x28<<1));     	// I2Caddr=0x28
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);                   // SS0
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x00);                   // write,W0=0
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x0d);                   // register 0x0d
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x00);  			// testmode 0x00 _> off 0x04 -> checkerboard 10 1010 1010 1010
				do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

				printf(" set offset... \n");
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x28<<1));     	// I2Caddr=0x28
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);                   // SS0
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x00);                   // write,W0=0
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x10);                   // register 0x10
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x64);  			// offset = + 100
				do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

				printf(" Output Phase... \n");
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x28<<1));     	// I2Caddr=0x28
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);                   // SS0
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x00);                   // write,W0=0
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x16);                   // register 0x16
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x03);  			// 0x02 -> 120�   0x03 -> 180� default
				do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

				printf(" VREF... \n");
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x28<<1));     	// I2Caddr=0x28
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);                   // SS0
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x00);                   // write,W0=0
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x18);                   // register 0x18
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x04);  			// 0x04 ->  2.0Vpp    0x01 -> 1.14Vpp
				do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);



				printf(" set test mode on all channels... \n");
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x28<<1));     	// I2Caddr=0x28
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);                   // SS0
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x00);                   // write,W0=0
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0xff);                   // register 0xff
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01);  			// update
				do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);


//---------------------------------------------------------------------------------------------------------------------------

				printf(" request read one byte from register 0x01 ... \n");
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x28<<1));     	// I2Caddr=0x28
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);                   // SS0
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x80);                   // read,W0=1
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);                   // register 0x01
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0xff);  			// dummy 0xff request one byte

				do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);



				printf(" read: \n");
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(0x28<<1))+1); //read
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200+ 0x03);  			//STOP read 2 bytes (register number is also read back!)
				do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));  }while (IIC_status_register != 0x88);
				printf("  readbit=%x\n",( *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c)) ));
				printf("  reg#=%x\n",( *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c)) ));
				printf("  CHIP_ID=%x\n",( *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c)) ));
				printf("\n\n");



				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x120)) = 0x0f; // set IIC RX_FIFO DEPTH to max 0xf
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x02; // reset IIC TX_FIFO
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x01; // enable AXI IIC

				  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); printf("I2C status reg after init: %x\n",IIC_status_register);

				  //printf("set I2Cmux on ZC706 to FMC HPC ... \n");
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x74<<1)); // U65 ZC706 I2Cmux
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x20); 		// enable II2C FMC HPC
				  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free

				  usleep(200);



            };break;





            case't':  {

            	   printf("\n\n start ABUFF_OUT sequence  ... \n");
				   *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0xe0; //AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1     // idle  state
				   *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0xc0; //AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 0     // neg. edge INIT
				   *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0xe0; //AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
				   for (i=0;i<11;i++) {
					 *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0xa0; //AMUX_PWR = 1  AMUX_CLK = 0  AMUX_INIT = 1     // eleven clk cycles
					 *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0xe0; //AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
				   }
				   *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) =  0xe0; //AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1     // idle  state




				 printf("IDELAY(20) = "); scanf("%hd",&b);  fflush(stdin);

            	//set IDELAY

            	*((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = (b<<16); //CNTVAL_IN

				*((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x20000000 + (b<<16) ; //[29] =1 LD
				*((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000 + (b<<16) ; //[29] =0

				d=*((unsigned int *)(status0_ptr + status0_in_page_offset+0x0)); printf("%08lx       ",d);
									  bin((d>>16) & 0x3fff); printf("\n");


				// talk to AD9249 over SC18IS602 I2C/SPI bridge:

				printf("\n enable CAR I2Cmux I2C0 ... \n");
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01); 		// enable 0
				do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
				usleep(200);

				printf("\n configure SPI port ... \n");
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x28<<1));     	// I2Caddr=0x28
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0xf0);                   //
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x02);  			// SPI frequency = 115kHz  using Mode 0
				do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);



				//--------------------------------------------------------------------------------------------------------------------------------------
				printf(" set device index to program channels H1/2 G1/2 F1/2 and E1/2... \n");
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x28<<1));     	// I2Caddr=0x28
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);                   // SS0
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x00);                   // write,W0=0
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x04);                   // register 0x04
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x0f);  			// all channels set
				do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

				printf(" set device index to program channels D1/2 C1/2 B1/2 and A1/2... \n");
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x28<<1));     	// I2Caddr=0x28
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);                   // SS0
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x00);                   // write,W0=0
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x05);                   // register 0x05
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x0f);  			// all channels set
				do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

				printf(" set device index to program channels D1/2 C1/2 B1/2 and A1/2... \n");
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x28<<1));     	// I2Caddr=0x28
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);                   // SS0
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x00);                   // write,W0=0
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x14);                   // register 0x14
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x00);  			// offset binary mode
				do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

				printf(" set test mode on all channels... \n");
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x28<<1));     	// I2Caddr=0x28
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);                   // SS0
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x00);                   // write,W0=0
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x0d);                   // register 0x0d
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x00);  			// testmode 0x00 _> off 0x04 -> checkerboard 10 1010 1010 1010
				do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

				printf(" set test mode on all channels... \n");
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x28<<1));     	// I2Caddr=0x28
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);                   // SS0
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x00);                   // write,W0=0
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0xff);                   // register 0xff
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01);  			// update
				do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);


//---------------------------------------------------------------------------------------------------------------------------

				printf(" request read one byte from register 0x01 ... \n");
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x28<<1));     	// I2Caddr=0x28
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);                   // SS0
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x80);                   // read,W0=1
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);                   // register 0x01
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0xff);  			// dummy 0xff request one byte

				do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);



				printf(" read: \n");
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(0x28<<1))+1); //read
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200+ 0x03);  			//STOP read 2 bytes (register number is also read back!)
				do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));  }while (IIC_status_register != 0x88);
				printf("  readbit=%x\n",( *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c)) ));
				printf("  reg#=%x\n",( *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c)) ));
				printf("  CHIP_ID=%x\n",( *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c)) ));
				printf("\n\n");



				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x120)) = 0x0f; // set IIC RX_FIFO DEPTH to max 0xf
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x02; // reset IIC TX_FIFO
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x01; // enable AXI IIC

				  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); printf("I2C status reg after init: %x\n",IIC_status_register);

				  //printf("set I2Cmux on ZC706 to FMC HPC ... \n");
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x74<<1)); // U65 ZC706 I2Cmux
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x20); 		// enable II2C FMC HPC
				  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free

				  usleep(200);


				//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX  send config stream: XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
				printf("\n enable CAR I2Cmux I2C3 ... \n");
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x08); 		// enable 3
				do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
				usleep(200);

				printf("INJ (0 to 2047) = "); scanf("%hd",&a);  fflush(stdin);   //set INJ pulse height ( 6ns fall time )
				CARwrite_DAC7678_channel( 0x4f, 0x06, a);
				usleep(1000);


				// enable single pixel for injection:

				for(int row =0; row < 8; row++)
				  {

					for(int col =0; col < 8; col++)
					{

						ADC_data=fopen("//home//root/ADC_data.txt","a");


						   // clear all pixels
						   for (i=60;i<92;i+=4)  { sequ_pc[i]=0; sequ_pc[i+1]=0; sequ_pc[i+2]=0; sequ_pc[i+3]=0; }  //ROW<0..7>
						   for (i=92;i<148;i+=7) { sequ_pc[i]=0; sequ_pc[i+1]=0; sequ_pc[i+2]=0; sequ_pc[i+3]=0; sequ_pc[i+4]=0; sequ_pc[i+5]=0; sequ_pc[i+6]=0; } //COL<0..7>


						   // set pixel
						   int row_bit = 60+(row*4);

						   sequ_pc[row_bit]=1; // ENTRIMDAC_R
						   sequ_pc[row_bit+1]=1; // INJEN_R   !!!!!!!!!!!!!!!!!!!!!!!!!
						   sequ_pc[row_bit+2]=1; // ENCOMPOUT_R
						   sequ_pc[row_bit+3]=1; // ENSFOUT_R


						   int col_bit = 147-((7-col)*7);

						   sequ_pc[col_bit]=1;   // ENSFOUT_C
						   sequ_pc[col_bit-1]=1; // ENCOMPOUT_C
						   sequ_pc[col_bit-2]=1; // INJEN_C   !!!!!!!!!!!!!!!!!!!!!
						   sequ_pc[col_bit-3]=1; // TRIMDAC_C<0>
						   sequ_pc[col_bit-4]=1; // TRIMDAC_C<1>
						   sequ_pc[col_bit-5]=1; // TRIMDAC_C<2>
						   sequ_pc[col_bit-6]=1; // TRIMDAC_C<3>

							  config_word_a = 0x0;
							  config_word_b = 0x0;
							  config_word_c = 0x0;
							  config_word_d = 0x0;
							  config_word_e = 0x0;

							  for (i=0;i<20;i++) {  if (sequ_pc[i+128]==1) config_word_a = config_word_a | (1 << i);  }
							  for (i=0;i<32;i++) {  if (sequ_pc[i+96]==1)  config_word_b = config_word_b | (1 << i);  }
							  for (i=0;i<32;i++) {  if (sequ_pc[i+64]==1)  config_word_c = config_word_c | (1 << i);  }
							  for (i=0;i<32;i++) {  if (sequ_pc[i+32]==1)  config_word_d = config_word_d | (1 << i);  }
							  for (i=0;i<32;i++) {  if (sequ_pc[i]==1)     config_word_e = config_word_e | (1 << i);  }


							// load 5 x 32 bit words:
							*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_a;
							*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_b;
							*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_c;
							*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_d;
							*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_e;


							// send state machine start pulse
							*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0xe1;
							*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0xe0;



						   usleep(600); // ?????????


						   *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x80000000; //[31] =1 reset async Counter
						   *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000; //[31] =0




						   int TOTcnt = 0;
						   int HITcnt = 0;

						   int numINJ =1; //200

						   //send INJ pulses open ADC gate

							   *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x80000000; //[31] =1 reset TOTcnt
							   *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000; //[31] =0

							   //send INJECTION PULS 2V / 20us
								*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x100e0; //INJ =1
								usleep(5000);  //Gate width
								*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0xe0; //INJ =0
								usleep(2000);

								//read TOTcnt
								d=*((unsigned int *)(status0_ptr + status0_in_page_offset+0x0));// printf("%08lx       \n",d);
								TOTcnt += ((d>>16)&0xffff);
								HITcnt += (d&0xffff);

//								// open gate for ADC9249
//								*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x1; //[0] =1
//								usleep(1);
//								*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x0; //[0] =0

								// write tlast pulse
								*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x40000000; //[30] =1
								*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000; //[30] =0


								// Read values from FIFO
								value = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x1c )); printf("receive data FIFO occupancy register: %08x\n",value);
								printf("reading FIFO....\n");

								for (i=0;i<value*4;i+=4) { //read 4 bytes
								  data = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x20));

								  //file_data = (~(data & 0x3fff))+1;  //convert from two's complement'
								  file_data = (data & 0x3fff);

								  if(i<40000) {

									  if(!(i%100)) {
										printf("%3d.Data:   ADC= %6ld  %08lx    ", i/4,(data & 0x3fff),(data & 0x3fff));
										bin(data & 0x3fff); printf("\n");
									  }
								  }



								  fprintf(ADC_data, "%ld\n",file_data );
								}
								fprintf(ADC_data, "%ld\n",0x0 );
						  fclose(ADC_data);






					   printf("col/row.. %1d/%1d   TOT=%4ld  HIT=%4ld\n",col,row,((TOTcnt/numINJ)*5),(HITcnt) );

					}// end col

				  }// end row


				//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX









            };break;





            case'k':  {

                //remove("//home//root/heatmap.txt");

				heatmap_data=fopen("//home//root/heatmap.txt","w");

				printf("\n enable CAR I2Cmux I2C3 ... \n");
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x08); 		// enable 3
				do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
				usleep(200);

				printf("INJ (0 to 2047) = "); scanf("%hd",&a);  fflush(stdin);   //set INJ pulse height ( 6ns fall time )
				CARwrite_DAC7678_channel( 0x4f, 0x06, a);
				usleep(1000);


				// enable single pixel for injection:

				for(int row =0; row < 8; row++)
				  {

					for(int col =0; col < 8; col++)
					{
//
		                   // clear all pixels
						   for (i=60;i<92;i+=4)  { sequ_pc[i]=0; sequ_pc[i+1]=0; sequ_pc[i+2]=0; sequ_pc[i+3]=0; }  //ROW<0..7>
						   for (i=92;i<148;i+=7) { sequ_pc[i]=0; sequ_pc[i+1]=0; sequ_pc[i+2]=0; sequ_pc[i+3]=0; sequ_pc[i+4]=0; sequ_pc[i+5]=0; sequ_pc[i+6]=0; } //COL<0..7>



						   // set pixel
						   int row_bit = 60+(row*4);

						   sequ_pc[row_bit]=1; // ENTRIMDAC_R
						   sequ_pc[row_bit+1]=1; // INJEN_R   !!!!!!!!!!!!!!!!!!!!!!!!!
						   sequ_pc[row_bit+2]=1; // ENCOMPOUT_R
						   sequ_pc[row_bit+3]=1; // ENSFOUT_R


						   int col_bit = 147-((7-col)*7);

						   sequ_pc[col_bit]=1;   // ENSFOUT_C
						   sequ_pc[col_bit-1]=1; // ENCOMPOUT_C
						   sequ_pc[col_bit-2]=1; // INJEN_C   !!!!!!!!!!!!!!!!!!!!!
						   sequ_pc[col_bit-3]=1; // TRIMDAC_C<0>
						   sequ_pc[col_bit-4]=1; // TRIMDAC_C<1>
						   sequ_pc[col_bit-5]=1; // TRIMDAC_C<2>
						   sequ_pc[col_bit-6]=1; // TRIMDAC_C<3>
//
//						   sequ_pc[col_bit-3]=((trimdac[col][row]) & 0x1); // TRIMDAC_C<0>
//						   sequ_pc[col_bit-4]=(((trimdac[col][row])>>1) & 0x1); // TRIMDAC_C<1>
//						   sequ_pc[col_bit-5]=(((trimdac[col][row])>>2) & 0x1); // TRIMDAC_C<2>
//						   sequ_pc[col_bit-6]=(((trimdac[col][row])>>3) & 0x1); // TRIMDAC_C<3>

						   //program pixel

//						   for (i=148;i>0;i--)
//						   {
//							   if (sequ_pc[i-1] ==1 ) cfg_PC_send_1();
//							   else cfg_PC_send_0();
//						   }
//
//
//						   ///////// send load puls !!!!!!!!!!!!!!!!!!!!!!!!!!!
//						  *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x00;
//						  *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x11; //LD = 1 RB = 1
//						  *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x10; //LD = 0 RB = 1




						   // new fast config stream :////////////////////////////////////////////////////////////

							  //config_word_a = 0x00021c08;
							  //config_word_b = 0x10204081;
							  //config_word_c = 0x0000000f;
							  //config_word_d = 0x0aa9652b;
							  //config_word_e = 0x594c9c80;

							  config_word_a = 0x0;
							  config_word_b = 0x0;
							  config_word_c = 0x0;
							  config_word_d = 0x0;
							  config_word_e = 0x0;

							  for (i=0;i<20;i++) {  if (sequ_pc[i+128]==1) config_word_a = config_word_a | (1 << i);  }
							  for (i=0;i<32;i++) {  if (sequ_pc[i+96]==1)  config_word_b = config_word_b | (1 << i);  }
							  for (i=0;i<32;i++) {  if (sequ_pc[i+64]==1)  config_word_c = config_word_c | (1 << i);  }
							  for (i=0;i<32;i++) {  if (sequ_pc[i+32]==1)  config_word_d = config_word_d | (1 << i);  }
							  for (i=0;i<32;i++) {  if (sequ_pc[i]==1)     config_word_e = config_word_e | (1 << i);  }




							// load 5 x 32 bit words:
							*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_a;
							*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_b;
							*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_c;
							*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_d;
							*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_e;


							// send state machine start pulse
							*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0xe1;
							*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0xe0;





						   usleep(600); // ?????????


						   *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x80000000; //[31] =1 reset async Counter
						   *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000; //[31] =0


//						   for (i=0;i<200;i++) // send 200 INJ pulses
//						   {
//							   //send INJECTION PULS 2V / 20us
//								*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x10000; //INJ =1
//								usleep(5000);  //Gate width
//								*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x0; //INJ =0
//								usleep(2000);
//						   }
//
//						   //read async counter
//            	           d=*((unsigned int *)(status0_ptr + status0_in_page_offset+0x0)); printf("%08lx       \n",d);
//            	           fprintf(heatmap_data, "%ld\n",d );

            	           int TOTcnt = 0;
            	           int HITcnt = 0;

            	           int numINJ =200; //200

            	           for (i=0;i<numINJ;i++) // send 200 INJ pulses  TOTcnt
						   {
            	        	   *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x80000000; //[31] =1 reset TOTcnt
            	        	   *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000; //[31] =0

							   //send INJECTION PULS 2V / 20us
								*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x100e0; //INJ =1
								usleep(5000);  //Gate width
								*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0xe0; //INJ =0
								usleep(2000);

								//read TOTcnt
							    d=*((unsigned int *)(status0_ptr + status0_in_page_offset+0x0));// printf("%08lx       \n",d);
								TOTcnt += ((d>>16)&0xffff);
								HITcnt += (d&0xffff);
						   }



						   fprintf(heatmap_data, "%ld\n",(TOTcnt/numINJ)*5 );
            	           //fprintf(heatmap_data, "%lx\n",d );

					   printf("col/row.. %1d/%1d   TOT=%4ld  HIT=%4ld\n",col,row,((TOTcnt/numINJ)*5),(HITcnt) );

					}// end col

				  }// end row

				fclose(heatmap_data);
            };break;






            case's':  {

            	// S_CURVE ///////////////////////////////////////////////////////////////////////////////////////


            	 *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x1;  //disable data taking


            	 int scurve_dat[32][128][100];
            	 for (j=0;j<32;j++) for (i=0;i<128;i++) for(s=0;s<100;s++)  scurve_dat[j][i][s]= 0;
                 int vt50_point[32][128];
				 for (j=0;j<32;j++) for (i=0;i<128;i++)  vt50_point[j][i]=0;
				 int s_curve_noise[32][128];
				 for (j=0;j<32;j++) for (i=0;i<128;i++)  s_curve_noise[j][i]=0;


 for(dcol=0; dcol<32; dcol++) {
 //  for(dcol=3; dcol<26; dcol++) {

		for(pixel_octet =0; pixel_octet<16; pixel_octet++ ) {
	//    for(pixel_octet =8; pixel_octet<16; pixel_octet++ ) {

				 do{  // INIT I2C switch I2C Mux to I2C2
				  usleep(100);

				  printf("a");fflush(stdout);
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x120)) = 0x0f; usleep(500);// set IIC RX_FIFO DEPTH to max 0xf
				  printf("b");fflush(stdout);
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x02; usleep(500);// reset IIC TX_FIFO
				  printf("c");fflush(stdout);
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x01; usleep(500);// enable AXI IIC
				  printf("d");fflush(stdout);

				  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); usleep(500);/*printf("I2C status reg after reset: %x\n",IIC_status_register);*/

				  printf("x set I2Cmux on ZC706 to FMC HPC ... \n");fflush(stdout);
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x74<<1)); usleep(500);// U65 ZC706 I2Cmux
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x20); 	usleep(500);	// enable II2C FMC HPC
				  for ( i=0; i<20; i++) { IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); usleep(500);/*printf("I2C status reg after start: %x\n",IIC_status_register); */};//while (IIC_status_register != 0xc0);

				  usleep(200);

				  printf("\n x enable CAR I2Cmux I2C2 ... \n");fflush(stdout);
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); usleep(500); *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x04); usleep(500);
				  for ( i=0; i<20; i++) { printf("%2d",i);IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); usleep(500);fflush(stdout); printf("I2Cstatus: %x\n",IIC_status_register); };//while (IIC_status_register != 0xc0);
				  usleep(200);

				}while (IIC_status_register != 0xc0);



				 // start Initial Configuration -----------------------------------------------------------------------------------------------

				  int CHIP_ADDR = ChipBoard_I2Caddr;

				   int ENINJ[32][16];
				 int ENSFOUT[32][16];
					int TDAC[32][16][4];
					int MASK[32][16];
					int ENHB[32][16];

					int PixReg[16];


				 //default Values:
					for (j=0;j<32;j++) for (i=0;i<16;i++) ENINJ[j][i]=0x00;
					for (j=0;j<32;j++) for (i=0;i<16;i++) ENSFOUT[j][i]=0;
					for (j=0;j<32;j++) for (i=0;i<16;i++) { TDAC[j][i][0]= 0xff; TDAC[j][i][1]= 0xff; TDAC[j][i][2]= 0xff; TDAC[j][i][3]= 0x00; }





	//				TDAC[0][0][1]=0xf5; TDAC[0][6][1]=0xf6; TDAC[0][7][1]=0xf7;
	//				TDAC[0][8][1]=0xf8; TDAC[0][9][1]=0xf9; TDAC[0][10][1]=0xfa; TDAC[0][11][1]=0xfb; TDAC[0][12][1]=0xfc; TDAC[0][13][1]=0xfd; TDAC[0][14][1]=0xfe; TDAC[13][0][1]=0xff;   // for readback test

					for (j=0;j<32;j++) for (i=0;i<16;i++) {

							TDAC[j][i][0]= ( ((td[j][(i*8)+7]) & 0x1)  ) +
										   ( ((td[j][(i*8)+6]) & 0x1) <<1 ) +
										   ( ((td[j][(i*8)+5]) & 0x1) <<2 ) +
										   ( ((td[j][(i*8)+4]) & 0x1) <<3 ) +
										   ( ((td[j][(i*8)+3]) & 0x1) <<4 ) +
										   ( ((td[j][(i*8)+2]) & 0x1) <<5 ) +
										   ( ((td[j][(i*8)+1]) & 0x1) <<6 ) +
										   ( ((td[j][(i*8)+0]) & 0x1) <<7 );




							TDAC[j][i][1]= ( (((td[j][(i*8)+7]) & 0x2)>>1)  ) +
										   ( (((td[j][(i*8)+6]) & 0x2)>>1) <<1 ) +
										   ( (((td[j][(i*8)+5]) & 0x2)>>1) <<2 ) +
										   ( (((td[j][(i*8)+4]) & 0x2)>>1) <<3 ) +
										   ( (((td[j][(i*8)+3]) & 0x2)>>1) <<4 ) +
										   ( (((td[j][(i*8)+2]) & 0x2)>>1) <<5 ) +
										   ( (((td[j][(i*8)+1]) & 0x2)>>1) <<6 ) +
										   ( (((td[j][(i*8)+0]) & 0x2)>>1) <<7 );



							TDAC[j][i][2]= ( (((td[j][(i*8)+7]) & 0x4)>>2)  ) +
										   ( (((td[j][(i*8)+6]) & 0x4)>>2) <<1 ) +
										   ( (((td[j][(i*8)+5]) & 0x4)>>2) <<2 ) +
										   ( (((td[j][(i*8)+4]) & 0x4)>>2) <<3 ) +
										   ( (((td[j][(i*8)+3]) & 0x4)>>2) <<4 ) +
										   ( (((td[j][(i*8)+2]) & 0x4)>>2) <<5 ) +
										   ( (((td[j][(i*8)+1]) & 0x4)>>2) <<6 ) +
										   ( (((td[j][(i*8)+0]) & 0x4)>>2) <<7 );



							TDAC[j][i][3]= ( (((td[j][(i*8)+7]) & 0x8)>>3)  ) +
										   ( (((td[j][(i*8)+6]) & 0x8)>>3) <<1 ) +
										   ( (((td[j][(i*8)+5]) & 0x8)>>3) <<2 ) +
										   ( (((td[j][(i*8)+4]) & 0x8)>>3) <<3 ) +
										   ( (((td[j][(i*8)+3]) & 0x8)>>3) <<4 ) +
										   ( (((td[j][(i*8)+2]) & 0x8)>>3) <<5 ) +
										   ( (((td[j][(i*8)+1]) & 0x8)>>3) <<6 ) +
										   ( (((td[j][(i*8)+0]) & 0x8)>>3) <<7 );
						}

					    for (j=0;j<32;j++) for (i=0;i<16;i++) MASK[j][i]=0xff;
						for (j=0;j<32;j++) for (i=0;i<16;i++) ENHB[j][i]=0;

						//Disable all SFOUT DCOL outputs                                              // START +  CHIP_ADDR Write                                               //SubAddr[15..8]                                              //SubAddr[7..0]
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( CHIP_ADDR<<1));   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x04;  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x10;
						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x20);     do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); usleep(1000); }while (IIC_status_register != 0xc0); //wait for ////BUS free
																			 // STOP  + [5]  disable all SFOUT DCOL outputs  [4..0] DCOL addr for SFOUT  ( LD_switch 7 has also to be set in DCOL configuration ! )
						 usleep(500);// EEPROM test !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

						unsigned long EOCreg_Sub_addr = 0x0000;
						unsigned long PIXreg_Sub_addr = 0x0000;
						int LD_switch=0;


						 //configuring DCOLs:
						// for (j=0;j<32;j++) {
						 for (j=0;j<32;j++) {

							 EOCreg_Sub_addr =((0x10 + (j<<5)) & 0xffff); PIXreg_Sub_addr = (j<<5) & 0xffff;

							 // LD_switch : [6]EnableHitBus = 1  [4]EnableReadout = 1    =>  "0101 0xxx"   xxx => LDbit

							 LD_switch=0x10;   for (i=0;i<16;i++) PixReg[i] =   ENINJ[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
							 LD_switch=0x11;   for (i=0;i<16;i++) PixReg[i] = ENSFOUT[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
							 LD_switch=0x12;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][0];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
							 LD_switch=0x13;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][1];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
							 LD_switch=0x14;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][2];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
							 LD_switch=0x15;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][3];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
							 LD_switch=0x16;   for (i=0;i<16;i++) PixReg[i] =    MASK[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
							 LD_switch=0x17;   for (i=0;i<16;i++) PixReg[i] =    ENHB[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);

						 }




/////
 /////

		    	 printf("\n x enable CAR I2Cmux I2C2 ... \n");fflush(stdout);
				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); usleep(500); *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x04); usleep(50);
				  for ( i=0; i<20; i++) { IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); usleep(50);fflush(stdout); };//while (IIC_status_register != 0xc0);
				  usleep(200);


				 // start Octett Configuration -----------------------------------------------------------------------------------------------

				  for (j=0;j<32;j++) for (i=0;i<16;i++) MASK[j][i]=0xff;
				  for (j=0;j<32;j++) for (i=0;i<16;i++) ENHB[j][i]=0;


					//unmask enable INJ:

					MASK[dcol][pixel_octet]=~(0xff);
				   ENINJ[dcol][pixel_octet]=  0xff;






					 //configuring DCOLs:
					// for (j=0;j<32;j++) {
					 for (j=0;j<32;j++) {
						 EOCreg_Sub_addr =((0x10 + (j<<5)) & 0xffff); PIXreg_Sub_addr = (j<<5) & 0xffff;
						 // LD_switch : [6]EnableHitBus = 1  [4]EnableReadout = 1    =>  "0101 0xxx"   xxx => LDbit
						 LD_switch=0x10;   for (i=0;i<16;i++) PixReg[i] =   ENINJ[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
						 LD_switch=0x16;   for (i=0;i<16;i++) PixReg[i] =    MASK[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);


					 }



					 //printf("\n enable CAR I2Cmux I2C3 ... \n");
					*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
					*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x08); 		// enable 3
					do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));  usleep(1000);}while (IIC_status_register != 0xc0);
					usleep(200);

					//printf("THR = "); scanf("%hd",&a);  fflush(stdin);   //read THR
					//fprintf(heatmap_data, "%hd\n",a );

					CARwrite_DAC7678_channel( 0x4a, 0x00, 700); usleep(200); //printf("set Bias_1 -> DEL_HI     ...\n");
					CARwrite_DAC7678_channel( 0x4a, 0x02, 1200); usleep(200);//printf("set Bias_2 -> TH         ...\n");                  *********************
					CARwrite_DAC7678_channel( 0x4a, 0x04, 900); usleep(200); //printf("set Bias_3 -> DEL_LO     ...\n");
					CARwrite_DAC7678_channel( 0x4a, 0x06, 900); usleep(200); //printf("set Bias_4 -> BL         ...\n");

					usleep(1000);

              for (int injheight = 0; injheight < 1000; injheight+=10) {
			// for (int TH = 1300; TH > 950; TH-=10) {
            	  printf("."); fflush(stdout);
               for (int average = 0 ; average <10; average ++ ) {






					CARwrite_DAC7678_channel( 0x4f, 0x06, injheight);		usleep(1000);  // set INJ Pulse height                     ************************


            		 for (i=0;i<512;i++) { // clear Data FIFO
            			*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO
            			*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
            		  }

            		 *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x18 )) =  0x000000a5; //receive Data FIFO reset
            		 *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x28 )) =  0x000000a5; //AXI4 stream reset
            		 //printf("reset FIFO....\n");

            		 *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x18 )) =  0x000000a5; //receive Data FIFO reset
            		 *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x28 )) =  0x000000a5; //AXI4 stream reset
            		 //printf("reset FIFO1....\n");

                    // printf("DCOL:%3d PixelOctet:%3d      ",dcol,pixel_octet);



            		 for (j=0;j<100;j++){


						*((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x10000000; // start transmit SM
						*((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000; //

                        //send INJECTION PULS
						*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x100e1;    //INJ =1 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1   enable Data taking =1
						*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x000e1;    //INJ =0 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1   enable Data taking =1
						usleep(10);


            		} //end j


					   //AXI FIFO
					   // Read value from FIFO////////////////////////////////////////////////////////////

					  //*((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x00 ))=0xfffc0000; // reset Interrupt Status Registers
					  //value = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x00 )); printf("Interrupt Status Register:  %8x\n",value);
					  //	  if (((value>>30)&0x1) == 0x1) printf ("                                                             read has gone beyond the current packet and removed data from next packet !\n");
					  value = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x1c )); //printf("receive data FIFO occupancy register:  %4d\n",value);



					  int read_length = value;


					  for (i=0;i<(read_length*4);i+=4) { //read 4 bytes
						 data = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x20));

						 if ((data == 0) || ((data&0xff000000) == 0xaf000000 ) ||((data&0xff000000) == 0xe0000000 ) ) i=i;// printf("   %5d     : SIN     %8lx                                                   \n",i/4,data);
						 else     {
								 //printf("   %5d     : SIN     %8lx      DC=%2ld   PX=%3ld   TST=%3ld   TSL=%3ld    TOT=%3ld\n",i/4,data, (data >>24)&0x1f, (data >>16)&0x7f, (data >>8)&0xff, (data&0xff), ( ((data >>8)&0xff)) - (data&0xff) );

								 scurve_dat[(data >>24)&0x1f][(data >>16)&0x7f][injheight/10]++;
							 //scurve_dat[(data >>24)&0x1f][(data >>16)&0x7f][TH/10]++;
						 }

						 //printf("   %5d     : SIN_AXI_FIFO    %8lx  \n",i/4,data);
					  }





               } //average


              } //injheight




              printf("\nDCOL:%3d PixelOctet:%3d      \n",dcol,pixel_octet);

              int t0=0; int t1=0; int t2=0; int t3=0; int t4=0; int t5=0; int t6=0; int t7=0;
              for (i=0;i<100;i++)  {
            	 if((0 < i) & (i < 100)) printf(" INJ: %4dmV  P0=%3d P1=%3d P2=%3d P3=%3d P4=%3d P5=%3d P6=%3d P7=%3d\n",i*10,
                           (scurve_dat[dcol][(pixel_octet*8)+0][i]/10),
						   (scurve_dat[dcol][(pixel_octet*8)+1][i]/10),
						   (scurve_dat[dcol][(pixel_octet*8)+2][i]/10),
						   (scurve_dat[dcol][(pixel_octet*8)+3][i]/10),
						   (scurve_dat[dcol][(pixel_octet*8)+4][i]/10),
						   (scurve_dat[dcol][(pixel_octet*8)+5][i]/10),
						   (scurve_dat[dcol][(pixel_octet*8)+6][i]/10),
						   (scurve_dat[dcol][(pixel_octet*8)+7][i]/10) );

            	  if ( ( (scurve_dat[dcol][(pixel_octet*8)+0][i]/10) > 50 ) & (t0 == 0) ) { vt50_point[dcol][(pixel_octet*8)+0]= i*10; t0 = 1; }
            	  if ( ( (scurve_dat[dcol][(pixel_octet*8)+1][i]/10) > 50 ) & (t1 == 0) ) { vt50_point[dcol][(pixel_octet*8)+1]= i*10; t1 = 1; }
            	  if ( ( (scurve_dat[dcol][(pixel_octet*8)+2][i]/10) > 50 ) & (t2 == 0) ) { vt50_point[dcol][(pixel_octet*8)+2]= i*10; t2 = 1; }
            	  if ( ( (scurve_dat[dcol][(pixel_octet*8)+3][i]/10) > 50 ) & (t3 == 0) ) { vt50_point[dcol][(pixel_octet*8)+3]= i*10; t3 = 1; }
            	  if ( ( (scurve_dat[dcol][(pixel_octet*8)+4][i]/10) > 50 ) & (t4 == 0) ) { vt50_point[dcol][(pixel_octet*8)+4]= i*10; t4 = 1; }
            	  if ( ( (scurve_dat[dcol][(pixel_octet*8)+5][i]/10) > 50 ) & (t5 == 0) ) { vt50_point[dcol][(pixel_octet*8)+5]= i*10; t5 = 1; }
            	  if ( ( (scurve_dat[dcol][(pixel_octet*8)+6][i]/10) > 50 ) & (t6 == 0) ) { vt50_point[dcol][(pixel_octet*8)+6]= i*10; t6 = 1; }
            	  if ( ( (scurve_dat[dcol][(pixel_octet*8)+7][i]/10) > 50 ) & (t7 == 0) ) { vt50_point[dcol][(pixel_octet*8)+7]= i*10; t7 = 1; }

            	  if ( ( (scurve_dat[dcol][(pixel_octet*8)+0][i]/10) > 16 ) & ((scurve_dat[dcol][(pixel_octet*8)+0][i]/10) < 84 ) ) { s_curve_noise[dcol][(pixel_octet*8)+0] ++; }
            	  if ( ( (scurve_dat[dcol][(pixel_octet*8)+1][i]/10) > 16 ) & ((scurve_dat[dcol][(pixel_octet*8)+1][i]/10) < 84 ) ) { s_curve_noise[dcol][(pixel_octet*8)+1] ++; }
            	  if ( ( (scurve_dat[dcol][(pixel_octet*8)+2][i]/10) > 16 ) & ((scurve_dat[dcol][(pixel_octet*8)+2][i]/10) < 84 ) ) { s_curve_noise[dcol][(pixel_octet*8)+2] ++; }
            	  if ( ( (scurve_dat[dcol][(pixel_octet*8)+3][i]/10) > 16 ) & ((scurve_dat[dcol][(pixel_octet*8)+3][i]/10) < 84 ) ) { s_curve_noise[dcol][(pixel_octet*8)+3] ++; }
            	  if ( ( (scurve_dat[dcol][(pixel_octet*8)+4][i]/10) > 16 ) & ((scurve_dat[dcol][(pixel_octet*8)+4][i]/10) < 84 ) ) { s_curve_noise[dcol][(pixel_octet*8)+4] ++; }
            	  if ( ( (scurve_dat[dcol][(pixel_octet*8)+5][i]/10) > 16 ) & ((scurve_dat[dcol][(pixel_octet*8)+5][i]/10) < 84 ) ) { s_curve_noise[dcol][(pixel_octet*8)+5] ++; }
            	  if ( ( (scurve_dat[dcol][(pixel_octet*8)+6][i]/10) > 16 ) & ((scurve_dat[dcol][(pixel_octet*8)+6][i]/10) < 84 ) ) { s_curve_noise[dcol][(pixel_octet*8)+6] ++; }
            	  if ( ( (scurve_dat[dcol][(pixel_octet*8)+7][i]/10) > 16 ) & ((scurve_dat[dcol][(pixel_octet*8)+7][i]/10) < 84 ) ) { s_curve_noise[dcol][(pixel_octet*8)+7] ++; }



              }


              }  //pixel_octet

              }  //dcol

              s_curve_data=fopen("//home//root/s_curve.txt","w");


              for (dcol=0; dcol <32; dcol++){
                for (i=0;i<128;i++) {
            	   printf(" %3d.VT50 = %3dmV            Noise = %4dmV\n",i,vt50_point[dcol][i], s_curve_noise[dcol][i]*10);
            	   fprintf(s_curve_data, "%8d\n",dcol + ((vt50_point[dcol][i])<<10) + ((s_curve_noise[dcol][i]*10)<<20) );
                }
              }
			  fclose(s_curve_data);


//                         //remove("//home//root/heatmap.txt");
//
//         				s_curve_data=fopen("//home//root/s_curve.txt","w");
//
//         				printf("\n enable CAR I2Cmux I2C3 ... \n");
//         				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
//         				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x08); 		// enable 3
//         				do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
//         				usleep(200);
//
//
//         				// enable single pixel for injection:
//
//         				printf("\n start ... \n");
//
//         				for(int row =0; row < 8; row++)
//         				  {
//
//                            for(int col =0; col < 8; col++)
//
//         					{
//
//
//         						for (int inj = 0; inj< 300; inj+=5) {
//
//         					    printf("%d\n",inj);
//
//								CARwrite_DAC7678_channel( 0x4f, 0x06, inj);
//								usleep(1000);
//
//
//         		                   // clear all pixels
//         						   for (i=60;i<92;i+=4)  { sequ_pc[i]=0; sequ_pc[i+1]=0; sequ_pc[i+2]=0; sequ_pc[i+3]=0; }  //ROW<0..7>
//         						   for (i=92;i<148;i+=7) { sequ_pc[i]=0; sequ_pc[i+1]=0; sequ_pc[i+2]=0; sequ_pc[i+3]=0; sequ_pc[i+4]=0; sequ_pc[i+5]=0; sequ_pc[i+6]=0; } //COL<0..7>
//
//
//
//         						   // set pixel
//         						   int row_bit = 60+(row*4);
//
//         						   sequ_pc[row_bit]=1; // ENTRIMDAC_R
//         						   sequ_pc[row_bit+1]=1; // INJEN_R   !!!!!!!!!!!!!!!!!!!!!!!!!
//         						   sequ_pc[row_bit+2]=1; // ENCOMPOUT_R
//         						   sequ_pc[row_bit+3]=1; // ENSFOUT_R
//
//
//         						   int col_bit = 147-((7-col)*7);
//
//         						   sequ_pc[col_bit]=1;   // ENSFOUT_C
//         						   sequ_pc[col_bit-1]=1; // ENCOMPOUT_C
//         						   sequ_pc[col_bit-2]=1; // INJEN_C   !!!!!!!!!!!!!!!!!!!!!
//        						   sequ_pc[col_bit-3]=1; // TRIMDAC_C<0>
//        						   sequ_pc[col_bit-4]=1; // TRIMDAC_C<1>
//        						   sequ_pc[col_bit-5]=1; // TRIMDAC_C<2>
//        						   sequ_pc[col_bit-6]=1; // TRIMDAC_C<3>
//        //
//        //						   sequ_pc[col_bit-3]=((trimdac[col][row]) & 0x1); // TRIMDAC_C<0>
//        //						   sequ_pc[col_bit-4]=(((trimdac[col][row])>>1) & 0x1); // TRIMDAC_C<1>
//        //						   sequ_pc[col_bit-5]=(((trimdac[col][row])>>2) & 0x1); // TRIMDAC_C<2>
//        //						   sequ_pc[col_bit-6]=(((trimdac[col][row])>>3) & 0x1); // TRIMDAC_C<3>
//
//
//
//         							  config_word_a = 0x0;
//         							  config_word_b = 0x0;
//         							  config_word_c = 0x0;
//         							  config_word_d = 0x0;
//         							  config_word_e = 0x0;
//
//         							  for (i=0;i<20;i++) {  if (sequ_pc[i+128]==1) config_word_a = config_word_a | (1 << i);  }
//         							  for (i=0;i<32;i++) {  if (sequ_pc[i+96]==1)  config_word_b = config_word_b | (1 << i);  }
//         							  for (i=0;i<32;i++) {  if (sequ_pc[i+64]==1)  config_word_c = config_word_c | (1 << i);  }
//         							  for (i=0;i<32;i++) {  if (sequ_pc[i+32]==1)  config_word_d = config_word_d | (1 << i);  }
//         							  for (i=0;i<32;i++) {  if (sequ_pc[i]==1)     config_word_e = config_word_e | (1 << i);  }
//
//
//
//
//         							// load 5 x 32 bit words:
//         							*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_a;
//         							*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_b;
//         							*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_c;
//         							*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_d;
//         							*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_e;
//
//
//         							// send state machine start pulse
//         							*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x1;
//         							*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x0;
//
//
//
//
//
//         						   usleep(600); // ?????????
//
//
//         						   *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x80000000; //[31] =1 reset async Counter
//         						   *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000; //[31] =0
//
//
//         						   for (i=0;i<200;i++) // send 200 INJ pulses
//         						   {
//         							   //send INJECTION PULS 2V / 20us
//         								*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x100e0; //INJ =1
//         								usleep(5000);  //Gate width
//         								*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0xe0; //INJ =0
//         								usleep(2000);
//         						   }
//
//
//         						   //read async counter
//                     	           d=*((unsigned int *)(status0_ptr + status0_in_page_offset+0x0)); printf("%4ld  %4ld|",((d>>16)&0xffff),( d&0xffff));
//                     	           fprintf(s_curve_data, "%ld\n",d );
//
//
//         						}// end inj
//         						fprintf(s_curve_data, "%ld\n",999999999 );
//
//         					   printf("\ntrimdac: %ld       col/row.. %1d/%1d \n",trimdac[col][row],col,row);
//
//
//
//         					}// end col
//
//         				  }// end row
//
//
//
//         				fclose(s_curve_data);
                     };break;





                     case'v':  {


						  *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x08000000 + (g_window_center_base<<22) + (g_bitslip_base<<9); //[27] =1 LD SIN
						  *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000;                    //[27] =0



					};break;


                     case'r':  {

                    	 // read config file //////////////////////////////////////////////
						config_data=fopen("//home//root/config_MPW2.txt","r");
						for (j=0;j<256;j++) {
						  fscanf(config_data,"%3ld%5ld%[^\n]\n",&index,&data,str_buf); //printf("%s\n", str_buf);
						  k[index]=data;
						}
						fclose(config_data);
						//for (j=0;j<256;j++) printf("%3d %5ld \n", j,k[j]); /////////////

				      trimdac1[0][0]=k[100]; trimdac1[0][1]=k[108]; trimdac1[0][2]=k[116]; trimdac1[0][3]=k[124]; trimdac1[0][4]=k[132]; trimdac1[0][5]=k[140]; trimdac1[0][6]=k[148]; trimdac1[0][7]=k[156];
					  trimdac1[1][0]=k[101]; trimdac1[1][1]=k[109]; trimdac1[1][2]=k[117]; trimdac1[1][3]=k[125]; trimdac1[1][4]=k[133]; trimdac1[1][5]=k[141]; trimdac1[1][6]=k[149]; trimdac1[1][7]=k[157];
					  trimdac1[2][0]=k[102]; trimdac1[2][1]=k[110]; trimdac1[2][2]=k[118]; trimdac1[2][3]=k[126]; trimdac1[2][4]=k[134]; trimdac1[2][5]=k[142]; trimdac1[2][6]=k[150]; trimdac1[2][7]=k[158];
					  trimdac1[3][0]=k[103]; trimdac1[3][1]=k[111]; trimdac1[3][2]=k[119]; trimdac1[3][3]=k[127]; trimdac1[3][4]=k[135]; trimdac1[3][5]=k[143]; trimdac1[3][6]=k[151]; trimdac1[3][7]=k[159];
					  trimdac1[4][0]=k[104]; trimdac1[4][1]=k[112]; trimdac1[4][2]=k[120]; trimdac1[4][3]=k[128]; trimdac1[4][4]=k[136]; trimdac1[4][5]=k[144]; trimdac1[4][6]=k[152]; trimdac1[4][7]=k[160];
					  trimdac1[5][0]=k[105]; trimdac1[5][1]=k[113]; trimdac1[5][2]=k[121]; trimdac1[5][3]=k[129]; trimdac1[5][4]=k[137]; trimdac1[5][5]=k[145]; trimdac1[5][6]=k[153]; trimdac1[5][7]=k[161];
					  trimdac1[6][0]=k[106]; trimdac1[6][1]=k[114]; trimdac1[6][2]=k[122]; trimdac1[6][3]=k[130]; trimdac1[6][4]=k[138]; trimdac1[6][5]=k[146]; trimdac1[6][6]=k[154]; trimdac1[6][7]=k[162];
					  trimdac1[7][0]=k[107]; trimdac1[7][1]=k[115]; trimdac1[7][2]=k[123]; trimdac1[7][3]=k[131]; trimdac1[7][4]=k[139]; trimdac1[7][5]=k[147]; trimdac1[7][6]=k[155]; trimdac1[7][7]=k[163];

					  trimdac2[0][0]=k[170]; trimdac2[0][1]=k[178]; trimdac2[0][2]=k[186]; trimdac2[0][3]=k[194]; trimdac2[0][4]=k[202]; trimdac2[0][5]=k[210]; trimdac2[0][6]=k[218]; trimdac2[0][7]=k[226];
					  trimdac2[1][0]=k[171]; trimdac2[1][1]=k[179]; trimdac2[1][2]=k[187]; trimdac2[1][3]=k[195]; trimdac2[1][4]=k[203]; trimdac2[1][5]=k[211]; trimdac2[1][6]=k[219]; trimdac2[1][7]=k[227];
					  trimdac2[2][0]=k[172]; trimdac2[2][1]=k[180]; trimdac2[2][2]=k[188]; trimdac2[2][3]=k[196]; trimdac2[2][4]=k[204]; trimdac2[2][5]=k[212]; trimdac2[2][6]=k[220]; trimdac2[2][7]=k[228];
					  trimdac2[3][0]=k[173]; trimdac2[3][1]=k[181]; trimdac2[3][2]=k[189]; trimdac2[3][3]=k[197]; trimdac2[3][4]=k[205]; trimdac2[3][5]=k[213]; trimdac2[3][6]=k[221]; trimdac2[3][7]=k[229];
			          trimdac2[4][0]=k[174]; trimdac2[4][1]=k[182]; trimdac2[4][2]=k[190]; trimdac2[4][3]=k[198]; trimdac2[4][4]=k[206]; trimdac2[4][5]=k[214]; trimdac2[4][6]=k[222]; trimdac2[4][7]=k[230];
	     		      trimdac2[5][0]=k[175]; trimdac2[5][1]=k[183]; trimdac2[5][2]=k[191]; trimdac2[5][3]=k[199]; trimdac2[5][4]=k[207]; trimdac2[5][5]=k[215]; trimdac2[5][6]=k[223]; trimdac2[5][7]=k[231];
					  trimdac2[6][0]=k[176]; trimdac2[6][1]=k[184]; trimdac2[6][2]=k[192]; trimdac2[6][3]=k[200]; trimdac2[6][4]=k[208]; trimdac2[6][5]=k[216]; trimdac2[6][6]=k[224]; trimdac2[6][7]=k[232];
					  trimdac2[7][0]=k[177]; trimdac2[7][1]=k[185]; trimdac2[7][2]=k[193]; trimdac2[7][3]=k[201]; trimdac2[7][4]=k[209]; trimdac2[7][5]=k[217]; trimdac2[7][6]=k[225]; trimdac2[7][7]=k[233];




                    	   printf("Shutter= : "); scanf("%d",&shutter_length); fflush(stdin);

                    	   *((unsigned int*)(CTRL4_ptr + CTRL4_page_offset+0)) = 0xffffffff-shutter_length;





							heatmap_data=fopen("//home//root/heatmap.txt","w");

							printf("\n enable CAR I2Cmux I2C3 ... \n");
							*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
							*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x08); 		// enable 3
							do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
							usleep(200);

							printf("THR = "); scanf("%hd",&a);  fflush(stdin);   //read THR

							CARwrite_DAC7678_channel( 0x4a, 0x00, a); usleep(2000);

							for(int row =0; row < 8; row++)
							  {

								for(int col =0; col < 8; col++)
								{
					                   // clear all pixels
									   for (i=60;i<92;i+=4)  { sequ_pc[i]=0; sequ_pc[i+1]=0; sequ_pc[i+2]=0; sequ_pc[i+3]=0; }  //ROW<0..7>
									   for (i=92;i<148;i+=7) { sequ_pc[i]=0; sequ_pc[i+1]=0; sequ_pc[i+2]=0; sequ_pc[i+3]=0; sequ_pc[i+4]=0; sequ_pc[i+5]=0; sequ_pc[i+6]=0; } //COL<0..7>



									   // set pixel
									   int row_bit = 60+(row*4);

									   sequ_pc[row_bit]=1; // ENTRIMDAC_R
									   sequ_pc[row_bit+1]=0; // INJEN_R   !!!!!!!!!!!!!!!!!!!!!!!!!
									   sequ_pc[row_bit+2]=1; // ENCOMPOUT_R
									   sequ_pc[row_bit+3]=1; // ENSFOUT_R


									   int col_bit = 147-((7-col)*7);

									   sequ_pc[col_bit]=1;   // ENSFOUT_C
									   sequ_pc[col_bit-1]=1; // ENCOMPOUT_C
									   sequ_pc[col_bit-2]=1; // INJEN_C   !!!!!!!!!!!!!!!!!!!!!
//									   sequ_pc[col_bit-3]=1; // TRIMDAC_C<0>
//									   sequ_pc[col_bit-4]=1; // TRIMDAC_C<1>
//									   sequ_pc[col_bit-5]=1; // TRIMDAC_C<2>
//									   sequ_pc[col_bit-6]=1; // TRIMDAC_C<3>
			//
									   sequ_pc[col_bit-3]=((trimdac2[col][row]) & 0x1); // TRIMDAC_C<0>
									   sequ_pc[col_bit-4]=(((trimdac2[col][row])>>1) & 0x1); // TRIMDAC_C<1>
									   sequ_pc[col_bit-5]=(((trimdac2[col][row])>>2) & 0x1); // TRIMDAC_C<2>
									   sequ_pc[col_bit-6]=(((trimdac2[col][row])>>3) & 0x1); // TRIMDAC_C<3>



										  config_word_a = 0x0;
										  config_word_b = 0x0;
										  config_word_c = 0x0;
										  config_word_d = 0x0;
										  config_word_e = 0x0;

										  for (i=0;i<20;i++) {  if (sequ_pc[i+128]==1) config_word_a = config_word_a | (1 << i);  }
										  for (i=0;i<32;i++) {  if (sequ_pc[i+96]==1)  config_word_b = config_word_b | (1 << i);  }
										  for (i=0;i<32;i++) {  if (sequ_pc[i+64]==1)  config_word_c = config_word_c | (1 << i);  }
										  for (i=0;i<32;i++) {  if (sequ_pc[i+32]==1)  config_word_d = config_word_d | (1 << i);  }
										  for (i=0;i<32;i++) {  if (sequ_pc[i]==1)     config_word_e = config_word_e | (1 << i);  }




										// load 5 x 32 bit words:
										*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_a;
										*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_b;
										*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_c;
										*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_d;
										*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_e;


										// send state machine start pulse
										*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x1;
										*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x0;


									   usleep(600); // ?????????

									   *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x80000000; //[31] =1 reset async Counter
									   *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000; //[31] =0

									   //open shutter

									   *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x20000; //start shutter
									   *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x00000; //start shutter

//									   for (int poll = 0; poll< 10; poll++) {
									   do {
										   d=*((unsigned int *)(status1_ptr + status1_in_page_offset+0x0));
										   //printf("  %4ld\n",d);
									   }while( (d&0x1)>0);



										data=*((unsigned int *)(status1_ptr + status1_in_page_offset+0x0008));// printf("%08lx       \n",d);
										fprintf(heatmap_data, "%ld\n",data );


								   printf("TRIMDAC: %2ld         col/row.. %1d/%1d     Hits:%6ld\n",trimdac2[col][row],col,row,data);

								}// end col

							  }// end row

							fclose(heatmap_data);


                     };break;

                     case'c':  {

							 // read config file //////////////////////////////////////////////
							config_data=fopen("//home//root/config_MPW2.txt","r");
							for (j=0;j<256;j++) {
							  fscanf(config_data,"%3ld%5ld%[^\n]\n",&index,&data,str_buf); //printf("%s\n", str_buf);
							  k[index]=data;
							}
							fclose(config_data);
							//for (j=0;j<256;j++) printf("%3d %5ld \n", j,k[j]); /////////////

						  trimdac1[0][0]=k[100]; trimdac1[0][1]=k[108]; trimdac1[0][2]=k[116]; trimdac1[0][3]=k[124]; trimdac1[0][4]=k[132]; trimdac1[0][5]=k[140]; trimdac1[0][6]=k[148]; trimdac1[0][7]=k[156];
						  trimdac1[1][0]=k[101]; trimdac1[1][1]=k[109]; trimdac1[1][2]=k[117]; trimdac1[1][3]=k[125]; trimdac1[1][4]=k[133]; trimdac1[1][5]=k[141]; trimdac1[1][6]=k[149]; trimdac1[1][7]=k[157];
						  trimdac1[2][0]=k[102]; trimdac1[2][1]=k[110]; trimdac1[2][2]=k[118]; trimdac1[2][3]=k[126]; trimdac1[2][4]=k[134]; trimdac1[2][5]=k[142]; trimdac1[2][6]=k[150]; trimdac1[2][7]=k[158];
						  trimdac1[3][0]=k[103]; trimdac1[3][1]=k[111]; trimdac1[3][2]=k[119]; trimdac1[3][3]=k[127]; trimdac1[3][4]=k[135]; trimdac1[3][5]=k[143]; trimdac1[3][6]=k[151]; trimdac1[3][7]=k[159];
						  trimdac1[4][0]=k[104]; trimdac1[4][1]=k[112]; trimdac1[4][2]=k[120]; trimdac1[4][3]=k[128]; trimdac1[4][4]=k[136]; trimdac1[4][5]=k[144]; trimdac1[4][6]=k[152]; trimdac1[4][7]=k[160];
						  trimdac1[5][0]=k[105]; trimdac1[5][1]=k[113]; trimdac1[5][2]=k[121]; trimdac1[5][3]=k[129]; trimdac1[5][4]=k[137]; trimdac1[5][5]=k[145]; trimdac1[5][6]=k[153]; trimdac1[5][7]=k[161];
						  trimdac1[6][0]=k[106]; trimdac1[6][1]=k[114]; trimdac1[6][2]=k[122]; trimdac1[6][3]=k[130]; trimdac1[6][4]=k[138]; trimdac1[6][5]=k[146]; trimdac1[6][6]=k[154]; trimdac1[6][7]=k[162];
						  trimdac1[7][0]=k[107]; trimdac1[7][1]=k[115]; trimdac1[7][2]=k[123]; trimdac1[7][3]=k[131]; trimdac1[7][4]=k[139]; trimdac1[7][5]=k[147]; trimdac1[7][6]=k[155]; trimdac1[7][7]=k[163];

						  trimdac2[0][0]=k[170]; trimdac2[0][1]=k[178]; trimdac2[0][2]=k[186]; trimdac2[0][3]=k[194]; trimdac2[0][4]=k[202]; trimdac2[0][5]=k[210]; trimdac2[0][6]=k[218]; trimdac2[0][7]=k[226];
						  trimdac2[1][0]=k[171]; trimdac2[1][1]=k[179]; trimdac2[1][2]=k[187]; trimdac2[1][3]=k[195]; trimdac2[1][4]=k[203]; trimdac2[1][5]=k[211]; trimdac2[1][6]=k[219]; trimdac2[1][7]=k[227];
						  trimdac2[2][0]=k[172]; trimdac2[2][1]=k[180]; trimdac2[2][2]=k[188]; trimdac2[2][3]=k[196]; trimdac2[2][4]=k[204]; trimdac2[2][5]=k[212]; trimdac2[2][6]=k[220]; trimdac2[2][7]=k[228];
						  trimdac2[3][0]=k[173]; trimdac2[3][1]=k[181]; trimdac2[3][2]=k[189]; trimdac2[3][3]=k[197]; trimdac2[3][4]=k[205]; trimdac2[3][5]=k[213]; trimdac2[3][6]=k[221]; trimdac2[3][7]=k[229];
						  trimdac2[4][0]=k[174]; trimdac2[4][1]=k[182]; trimdac2[4][2]=k[190]; trimdac2[4][3]=k[198]; trimdac2[4][4]=k[206]; trimdac2[4][5]=k[214]; trimdac2[4][6]=k[222]; trimdac2[4][7]=k[230];
						  trimdac2[5][0]=k[175]; trimdac2[5][1]=k[183]; trimdac2[5][2]=k[191]; trimdac2[5][3]=k[199]; trimdac2[5][4]=k[207]; trimdac2[5][5]=k[215]; trimdac2[5][6]=k[223]; trimdac2[5][7]=k[231];
						  trimdac2[6][0]=k[176]; trimdac2[6][1]=k[184]; trimdac2[6][2]=k[192]; trimdac2[6][3]=k[200]; trimdac2[6][4]=k[208]; trimdac2[6][5]=k[216]; trimdac2[6][6]=k[224]; trimdac2[6][7]=k[232];
						  trimdac2[7][0]=k[177]; trimdac2[7][1]=k[185]; trimdac2[7][2]=k[193]; trimdac2[7][3]=k[201]; trimdac2[7][4]=k[209]; trimdac2[7][5]=k[217]; trimdac2[7][6]=k[225]; trimdac2[7][7]=k[233];




							   printf("Shutter= : "); scanf("%d",&shutter_length); fflush(stdin);

							   *((unsigned int*)(CTRL4_ptr + CTRL4_page_offset+0)) = 0xffffffff-shutter_length;





								heatmap_data=fopen("//home//root/heatmap.txt","w");

								printf("\n enable CAR I2Cmux I2C3 ... \n");
								*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
								*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x08); 		// enable 3
								do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
								usleep(200);

								printf("THR = "); scanf("%hd",&a);  fflush(stdin);   //read THR

								CARwrite_DAC7678_channel( 0x4a, 0x00, a); usleep(2000);




								//for(int row =0; row < 8; row++)
								//  {

								//	for(int col =0; col < 8; col++)
								//	{
								           col=2;
								           row=1;
										   // clear all pixels
										   for (i=60;i<92;i+=4)  { sequ_pc[i]=0; sequ_pc[i+1]=0; sequ_pc[i+2]=0; sequ_pc[i+3]=0; }  //ROW<0..7>
										   for (i=92;i<148;i+=7) { sequ_pc[i]=0; sequ_pc[i+1]=0; sequ_pc[i+2]=0; sequ_pc[i+3]=0; sequ_pc[i+4]=0; sequ_pc[i+5]=0; sequ_pc[i+6]=0; } //COL<0..7>



										   // set pixel
										   int row_bit = 60+(row*4);

										   sequ_pc[row_bit]=1; // ENTRIMDAC_R
										   sequ_pc[row_bit+1]=0; // INJEN_R   !!!!!!!!!!!!!!!!!!!!!!!!!
										   sequ_pc[row_bit+2]=1; // ENCOMPOUT_R
										   sequ_pc[row_bit+3]=1; // ENSFOUT_R


										   int col_bit = 147-((7-col)*7);

										   sequ_pc[col_bit]=1;   // ENSFOUT_C
										   sequ_pc[col_bit-1]=1; // ENCOMPOUT_C
										   sequ_pc[col_bit-2]=1; // INJEN_C   !!!!!!!!!!!!!!!!!!!!!
	 //									   sequ_pc[col_bit-3]=1; // TRIMDAC_C<0>
	 //									   sequ_pc[col_bit-4]=1; // TRIMDAC_C<1>
	 //									   sequ_pc[col_bit-5]=1; // TRIMDAC_C<2>
	 //									   sequ_pc[col_bit-6]=1; // TRIMDAC_C<3>
				//
										   sequ_pc[col_bit-3]=((trimdac2[col][row]) & 0x1); // TRIMDAC_C<0>
										   sequ_pc[col_bit-4]=(((trimdac2[col][row])>>1) & 0x1); // TRIMDAC_C<1>
										   sequ_pc[col_bit-5]=(((trimdac2[col][row])>>2) & 0x1); // TRIMDAC_C<2>
										   sequ_pc[col_bit-6]=(((trimdac2[col][row])>>3) & 0x1); // TRIMDAC_C<3>



											  config_word_a = 0x0;
											  config_word_b = 0x0;
											  config_word_c = 0x0;
											  config_word_d = 0x0;
											  config_word_e = 0x0;

											  for (i=0;i<20;i++) {  if (sequ_pc[i+128]==1) config_word_a = config_word_a | (1 << i);  }
											  for (i=0;i<32;i++) {  if (sequ_pc[i+96]==1)  config_word_b = config_word_b | (1 << i);  }
											  for (i=0;i<32;i++) {  if (sequ_pc[i+64]==1)  config_word_c = config_word_c | (1 << i);  }
											  for (i=0;i<32;i++) {  if (sequ_pc[i+32]==1)  config_word_d = config_word_d | (1 << i);  }
											  for (i=0;i<32;i++) {  if (sequ_pc[i]==1)     config_word_e = config_word_e | (1 << i);  }




											// load 5 x 32 bit words:
											*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_a;
											*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_b;
											*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_c;
											*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_d;
											*((unsigned int*)(CTRL3_ptr + CTRL3_page_offset+0)) = config_word_e;


											// send state machine start pulse
											*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x1;
											*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x0;


										   usleep(600); // ?????????

											sleep(1);

											*((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x80000000; //[31] =1 reset async Counter
										    *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000; //[31] =0



									for (int loop = 0; loop < 10 ; loop++) {
										   //open shutter

										   *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x20000; //start shutter
										   *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x00000; //start shutter

	 //


										   do { // wait till shutter = 0
											   d=*((unsigned int *)(status1_ptr + status1_in_page_offset+0x0));
											  // printf("  %4ld\n",d);
										   }while( (d&0x1)>0);



											data=*((unsigned int *)(status1_ptr + status1_in_page_offset+0x0008));// printf("%08lx       \n",d);
											fprintf(heatmap_data, "%ld\n",data );


									   printf("TRIMDAC: %2ld         col/row.. %1d/%1d     Hits:%6ld\n",trimdac2[col][row],col,row,data);

									//}// end col

								  //}// end row

								}//end loop

								fclose(heatmap_data);


						  };break;


                     case'w': {

//                    	 s_old=0;
//                    	 for(;;) {
//							   s_new =*((unsigned int *)(status1_ptr + status1_in_page_offset+0x0));
//							   if ((s_old==0) && (s_new==1)) {
//							      cpu_time_pedge= clock();
//							   }
//							   if ((s_old==1) && (s_new==0)) {
//								 cpu_time_nedge=clock();
//								 double time_taken = ((double)(cpu_time_nedge-cpu_time_pedge))/CLOCKS_PER_SEC;
//							     printf("  %4ld  %4ld  %20ld       %f s\n",s_old, s_new, cpu_time_nedge-cpu_time_pedge,time_taken);
//
//							   }
//							   s_old = s_new;
                          //};

                    	 //printf("TrigDelay(4)= : "); scanf("%d",&trig_delay); fflush(stdin);

                    	 trig_delay=32;

                    	 *((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000 + (trig_delay<<16);  //[24]Counter set = 0  [23..16]trigdelay
                    	 *((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x01000000 + (trig_delay<<16);  //[24]Counter set = 1  [23..16]trigdelay
                    	 *((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000 + (trig_delay<<16);  //[24]Counter set = 0  [23..16]trigdelay


                    	 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
						*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x08); 		// enable 3
						do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
						usleep(200);

                        CARwrite_DAC7678_channel( 0x4f, 0x06, 1500);
						usleep(1000);

						for (i=0;i<10;i++) {
							usleep(1);
							//send INJECTION PULS 1800mV / 160ns
							*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x100e0; //INJ =1 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
							*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0xe0;    //INJ =0 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1


							//read 200MHz counter
						   //d=*((unsigned int *)(status0_ptr + status0_in_page_offset+0x0)); printf("%08lx       \n",d);
						}

						*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //write fifo1 tlast
						*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x80000000;  //write fifo1 tlast

						//read DataFIFO usedw -----------------------------------------------------------------------------
						d=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0008));
                        val1= d>>16;    printf("DATAFIFO fill level: %ld \n",val1);

                        printf("TLU_TRG_cnt: %ld \n",(d&0xffff));

                        for (i=0;i<val1+1;i++) {

                                               	*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
                                               	*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO

                                               	data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0));
                                               	printf("%3d.Data:    TOT=%8ld     EV# %8ld\n",i,((data>>16) & 0xffff), (data & 0xffff));

                                               }
                                               //read DataFIFO usedw ----------------------------------------------------------------------------
                       						d=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0008));
                       						val1= d>>16;    printf("DATAFIFO fill level: %ld \n",val1);


						//read DataFIFO usedw stat2 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
						d=*((unsigned int *)(status2_ptr + status2_in_page_offset+0x0008));
						val1= d>>16;    printf("DATAFIFO stat2 fill level: %ld \n",val1);


						for (i=0;i<val1+1;i++) {

							*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
							*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000001;  //rdrequ DataFIFO

							data=*((unsigned int *)(status2_ptr + status2_in_page_offset+0x0));
							printf("%3d.Data:    TOT=%8ld     EV# %8ld\n",i,((data>>16) & 0xffff), (data & 0xffff));


						}
						//read DataFIFO usedw stat2 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
						d=*((unsigned int *)(status2_ptr + status2_in_page_offset+0x0008));
						val1= d>>16;    printf("DATAFIFO stat2 fill level: %ld \n",val1);





						 counting_data=fopen("//home//root/counting.txt","w");

						 // Read value from FIFO1////////////////////////////////////////////////////////////
						 value = *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x1c )); printf("receive data FIFO1 occupancy register: %4d\n",value);
						 printf("reading FIFO1....\n");

						 for (i=0;i<value*4;i+=4) { //read 4 bytes
							 data = *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x20));
							 printf("%3d.Data:    TOT=%8ld     EV# %8ld\n",i/4,((data>>16) & 0xffff), (data & 0xffff));

							 fprintf(counting_data, "%ld\n",data );
						 }

						 fclose(counting_data);

						 // Read values from FIFO  ////////////////////////////////   ADC ADC ADC ///////////////
						ADC_data=fopen("//home//root/ADC_data.txt","w");

						value = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x1c )); printf("receive data FIFO occupancy register: %08x\n",value);
						printf("reading FIFO....\n");
						for (i=0;i<value*4;i+=4) { //read 4 bytes
						  data = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x20));

						  //file_data = (~(data & 0x3fff))+1;  //convert from two's complement'
						  file_data = data;

						  if(i<40000) {

							  if(!(i%100)) {
								printf("%3d.Data:   ADC_G2= %6ld  %08lx    ", i/4,(data & 0x3fff),(data & 0x3fff));
								bin(data & 0x3fff);
								printf("                ADC_H2= %6ld %08lx     ",((data>>14) & 0x3fff),((data>>14) & 0x3fff) );
								printf("                EV#= %6ld     ",((data>>28) & 0xf) );
								printf("\n");
							  }
						  }



						  fprintf(ADC_data, "%ld\n",file_data );
						}
						fprintf(ADC_data, "%ld\n",0x0 );
				        fclose(ADC_data);




                     };break;

                     case'n':  {

                  //  	 printf("DC = "); scanf("%hd",&a);  fflush(stdin);   //read THR

                     	// S_CURVE ///////////////////////////////////////////////////////////////////////////////////////


                     	 *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x0;  //disable data taking


                     	 int scurve_dat[32][128][100];
                     	 for (j=0;j<32;j++) for (i=0;i<128;i++) for(s=0;s<100;s++)  scurve_dat[j][i][s]= 0;
                          int vt50_point[32][128];
         				 for (j=0;j<32;j++) for (i=0;i<128;i++)  vt50_point[j][i]=0;
         				 int s_curve_noise[32][128];
         				 for (j=0;j<32;j++) for (i=0;i<128;i++)  s_curve_noise[j][i]=0;


         				 heatmap_data=fopen("//home//root/heatmap.txt","w");



        				  //printf("\n enable CAR I2Cmux I2C2 ... \n");
        				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x04);
        				  do { IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));  usleep(1000); printf("%x  ",IIC_status_register); }while (IIC_status_register != 0xc0);
        				  usleep(200);
        					 // start Configure -----------------------------------------------------------------------------------------------

        				         				  int CHIP_ADDR = ChipBoard_I2Caddr;

        				         				   int ENINJ[32][16];
        				         				 int ENSFOUT[32][16];
        				         					int TDAC[32][16][4];
        				         					int MASK[32][16];
        				         					int ENHB[32][16];

        				         					int PixReg[16];


        				         				 //default Values:
        				         					for (j=0;j<32;j++) for (i=0;i<16;i++) ENINJ[j][i]=0x00;
        				         					for (j=0;j<32;j++) for (i=0;i<16;i++) ENSFOUT[j][i]=0;
        				         					for (j=0;j<32;j++) for (i=0;i<16;i++) { TDAC[j][i][0]= 0xff; TDAC[j][i][1]= 0xff; TDAC[j][i][2]= 0xff; TDAC[j][i][3]= 0x00; }

        				         					unsigned long EOCreg_Sub_addr = 0x0000;
        				         				         					unsigned long PIXreg_Sub_addr = 0x0000;
        				         				         					int LD_switch=0;



        					 for (j=0;j<32;j++) {

        				         						 EOCreg_Sub_addr =((0x10 + (j<<5)) & 0xffff); PIXreg_Sub_addr = (j<<5) & 0xffff;

        				         						 // LD_switch : [6]EnableHitBus = 1  [4]EnableReadout = 1    =>  "0101 0xxx"   xxx => LDbit

        				         						 LD_switch=0x10;   for (i=0;i<16;i++) PixReg[i] =   ENINJ[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
        				         						 LD_switch=0x11;   for (i=0;i<16;i++) PixReg[i] = ENSFOUT[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
        				         						 LD_switch=0x12;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][0];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
        				         						 LD_switch=0x13;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][1];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
        				         						 LD_switch=0x14;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][2];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
        				         						 LD_switch=0x15;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][3];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
        				         						 LD_switch=0x16;   for (i=0;i<16;i++) PixReg[i] =    MASK[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
        				         						 LD_switch=0x17;   for (i=0;i<16;i++) PixReg[i] =    ENHB[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);

        				         					 }




              for(dcol=0; dcol<32; dcol++) {
         	//   for(dcol=20; dcol<26; dcol++) {

         		    for(pixel_octet =0; pixel_octet<16; pixel_octet++ ) {
         		//    for(pixel_octet =8; pixel_octet<16; pixel_octet++ ) {


         		   	for (int bit = 0; bit<8; bit++) {

        				 //***************************** init AXI IIC ; set I2Cmux on ZC706 to FMC_HPC; enable all four ports on CAR board I2Cmux *******************************//

        				 //*((unsigned int*)(IIC_ptr + IIC_page_offset+0x040)) = 0x0a; // soft reset
//
//        		    	//do{
//
//        				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x120)) = 0x0f; // set IIC RX_FIFO DEPTH to max 0xf
//        				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x02; // reset IIC TX_FIFO
//        				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x01; // enable AXI IIC
//
//        				  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));  /*printf("I2C status reg after reset: %x\n",IIC_status_register); */
//
//        				  //printf("set I2Cmux on ZC706 to FMC HPC ... \n");
//        				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x74<<1)); // U65 ZC706 I2Cmux
//        				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x20); 		// enable II2C FMC HPC
//        				  do { IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); usleep(1000);/* printf("I2C status reg after start: %x\n",IIC_status_register);*/ }while (IIC_status_register != 0xc0);
//
//        				  usleep(200);
//



         				  //printf("\n enable CAR I2Cmux I2C2 ... \n");
         				  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x04);
         				  do { IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));  usleep(1000); printf("%x  ",IIC_status_register); }while (IIC_status_register != 0xc0);
         				  usleep(200);

         		    	//}while (IIC_status_register == 0xc0);

                           printf("\n");




//         					for (j=0;j<32;j++) for (i=0;i<16;i++) {
//
//         									    	TDAC[j][i][0]= ( ((td[j][(i*8)+7]) & 0x1)  ) +
//         							                               ( ((td[j][(i*8)+6]) & 0x1) <<1 ) +
//         							                               ( ((td[j][(i*8)+5]) & 0x1) <<2 ) +
//         							                               ( ((td[j][(i*8)+4]) & 0x1) <<3 ) +
//         							                               ( ((td[j][(i*8)+3]) & 0x1) <<4 ) +
//         							                               ( ((td[j][(i*8)+2]) & 0x1) <<5 ) +
//         							                               ( ((td[j][(i*8)+1]) & 0x1) <<6 ) +
//         							                               ( ((td[j][(i*8)+0]) & 0x1) <<7 );
//
//
//
//
//         									    	TDAC[j][i][1]= ( (((td[j][(i*8)+7]) & 0x2)>>1)  ) +
//         														   ( (((td[j][(i*8)+6]) & 0x2)>>1) <<1 ) +
//         														   ( (((td[j][(i*8)+5]) & 0x2)>>1) <<2 ) +
//         														   ( (((td[j][(i*8)+4]) & 0x2)>>1) <<3 ) +
//         														   ( (((td[j][(i*8)+3]) & 0x2)>>1) <<4 ) +
//         														   ( (((td[j][(i*8)+2]) & 0x2)>>1) <<5 ) +
//         														   ( (((td[j][(i*8)+1]) & 0x2)>>1) <<6 ) +
//         														   ( (((td[j][(i*8)+0]) & 0x2)>>1) <<7 );
//
//
//
//         									    	TDAC[j][i][2]= ( (((td[j][(i*8)+7]) & 0x4)>>2)  ) +
//         														   ( (((td[j][(i*8)+6]) & 0x4)>>2) <<1 ) +
//         														   ( (((td[j][(i*8)+5]) & 0x4)>>2) <<2 ) +
//         														   ( (((td[j][(i*8)+4]) & 0x4)>>2) <<3 ) +
//         														   ( (((td[j][(i*8)+3]) & 0x4)>>2) <<4 ) +
//         														   ( (((td[j][(i*8)+2]) & 0x4)>>2) <<5 ) +
//         														   ( (((td[j][(i*8)+1]) & 0x4)>>2) <<6 ) +
//         														   ( (((td[j][(i*8)+0]) & 0x4)>>2) <<7 );
//
//
//
//         									    	TDAC[j][i][3]= ( (((td[j][(i*8)+7]) & 0x8)>>3)  ) +
//         														   ( (((td[j][(i*8)+6]) & 0x8)>>3) <<1 ) +
//         														   ( (((td[j][(i*8)+5]) & 0x8)>>3) <<2 ) +
//         														   ( (((td[j][(i*8)+4]) & 0x8)>>3) <<3 ) +
//         														   ( (((td[j][(i*8)+3]) & 0x8)>>3) <<4 ) +
//         														   ( (((td[j][(i*8)+2]) & 0x8)>>3) <<5 ) +
//         														   ( (((td[j][(i*8)+1]) & 0x8)>>3) <<6 ) +
//         														   ( (((td[j][(i*8)+0]) & 0x8)>>3) <<7 );
//         									    }
         					for (j=0;j<32;j++) for (i=0;i<16;i++) MASK[j][i]=0xff;
         					for (j=0;j<32;j++) for (i=0;i<16;i++) ENHB[j][i]=0;



         					//unmask enable INJ:

         				//	MASK[dcol][pixel_octet]=~(0xff);
         				//   ENINJ[dcol][pixel_octet]=  0xff;

         					MASK[dcol][pixel_octet]=~(0x80>>bit);
         				    ENINJ[dcol][pixel_octet]=  (0x80>>bit);

         				    //Disable all SFOUT DCOL outputs                                              // START +  CHIP_ADDR Write                                               //SubAddr[15..8]                                              //SubAddr[7..0]
         					 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( CHIP_ADDR<<1));   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x04;  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x10;
         					 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x20);     do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));usleep(1000); printf("%x  ",IIC_status_register); }while (IIC_status_register != 0xc0); //wait for ////BUS free
         																		 // STOP  + [5]  disable all SFOUT DCOL outputs  [4..0] DCOL addr for SFOUT  ( LD_switch 7 has also to be set in DCOL configuration ! )
         					 usleep(500);// EEPROM test !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!





         					 //configuring DCOLs:
         					// for (j=0;j<32;j++) {
         					 for (j=0;j<32;j++) {

         						 EOCreg_Sub_addr =((0x10 + (j<<5)) & 0xffff); PIXreg_Sub_addr = (j<<5) & 0xffff;

         						 // LD_switch : [6]EnableHitBus = 1  [4]EnableReadout = 1    =>  "0101 0xxx"   xxx => LDbit

         						// LD_switch=0x10;   for (i=0;i<16;i++) PixReg[i] =   ENINJ[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
         						// LD_switch=0x11;   for (i=0;i<16;i++) PixReg[i] = ENSFOUT[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
         						// LD_switch=0x12;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][0];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
         					//	 LD_switch=0x13;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][1];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
         					//	 LD_switch=0x14;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][2];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
         					//	 LD_switch=0x15;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][3];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
         						 LD_switch=0x16;   for (i=0;i<16;i++) PixReg[i] =    MASK[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg); usleep(5000);
         						 LD_switch=0x17;   for (i=0;i<16;i++) PixReg[i] =    ENHB[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg); usleep(5000);

         						 usleep(5000);

         					 }

          					printf("DCOL:%2d pixel_octet:%2d bit: %2d   ",dcol, pixel_octet,bit);


          					usleep(2000); printf("          enable CAR I2Cmux I2C3 ... ");
							*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
							*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x08); 		// enable 3
							do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); usleep(1000);/*printf(" %x",IIC_status_register);*/  }while (IIC_status_register != 0xc0);
							usleep(2000);
							printf("...... done");

         			 for (int TH = 1250; TH > 900; TH-=10) {







         					//printf("THR = "); scanf("%hd",&a);  fflush(stdin);   //read THR
         					//fprintf(heatmap_data, "%hd\n",a );

         					CARwrite_DAC7678_channel( 0x4a, 0x02, TH); usleep(200);//printf("set Bias_2 -> TH         ...\n");                  *********************


                     		 for (i=0;i<512;i++) { // clear Data FIFO
                     			*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO
                     			*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
                     		  }

                     		 *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x18 )) =  0x000000a5; //receive Data FIFO reset
                     		 *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x28 )) =  0x000000a5; //AXI4 stream reset
                     		 //printf("reset FIFO....\n");

                     		 *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x18 )) =  0x000000a5; //receive Data FIFO reset
                     		 *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x28 )) =  0x000000a5; //AXI4 stream reset
                     		 //printf("reset FIFO1....\n");

                             // printf("DCOL:%3d PixelOctet:%3d      ",dcol,pixel_octet);


                     		 sleep(0.1);



         					   //AXI FIFO
         					   // Read value from FIFO////////////////////////////////////////////////////////////

         					  //*((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x00 ))=0xfffc0000; // reset Interrupt Status Registers
         					  //value = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x00 )); printf("Interrupt Status Register:  %8x\n",value);
         					  //	  if (((value>>30)&0x1) == 0x1) printf ("                                                             read has gone beyond the current packet and removed data from next packet !\n");

         					  value = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x1c ));
         					  if ( (value > 0 ) & (value <200) ) {
         						  printf(" TH = %4d   value: %3d bit: %2d\n",TH,value,bit);
         						  fprintf(heatmap_data, "%d\n",TH + (dcol<<16) );
         						  break;
         					  }










                       } //TH


         			   } //bit



                       }  //pixel_octet

                       }  //dcol


              fclose(heatmap_data);
                              };break;





//                     case 'y': { // I2C TEST: set I2Cmux(enable 2); readback I2C mux register; prepare MAX1161x
//
//						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
//						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x04); 		// enable 2
//						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
//						 usleep(200);
//
//						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(0x71<<1))+1); //read
//						 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01);  			//STOP read 1 byte
//						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); /*printf("I2C status reg after start: %x\n",IIC_status_register);*/ }while (IIC_status_register != 0x88);
//						 MSDB = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));  printf("               I2Cmux: %x\n",MSDB);
//						 do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc8);
//						 usleep(200);
//
//						 //setup byte MAX11617
//						*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x35<<1) ); // MPW1chip_board_MAX1161x
//						*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x2d0); 		 	 //  stop + setup_byte (int clock)
//						do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
//
//
//                     };break;


                     case'j': {

                    	 printf("delay = "); scanf("%hd",&a);  fflush(stdin);   //read delay
                    	 //printf("TH = "); scanf("%hd",&b);  fflush(stdin);   //read delay



//                    	 printf("\n enable CAR I2Cmux I2C3 ... \n");
//						*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
//						*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x08); 		// enable 3
//						do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
//						usleep(200);

 //                   	CARwrite_DAC7678_channel( 0x4a, 0x02, b);  //set TH
//                    	CARwrite_DAC7678_channel( 0x4f, 0x04, 1000);  //set INJ pulse height for TLU trigger
                    	usleep(1000);

    					 for (i=0;i<2048;i++) { // clear Data FIFO
    						*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO
    						*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
    					  }


    					 //// TEST send INJ pulses after INIT_TS 6,4us 19,2us 32us 44,8us 57,6us ..................
    					*((unsigned int*)(AXI_REG_ARRAY_ptr + AXI_REG_ARRAY_page_offset+0x14)) = a;             //s_reg_f_out: delay TS_ini to start gate in steps of 50ns
    					*((unsigned int*)(AXI_REG_ARRAY_ptr + AXI_REG_ARRAY_page_offset+0x18)) = 0x0001ffff;    //s_reg_g_out: gate width 0x00000fff => 16 INJ pulses   1fff => 32   3fff => 64    ffff => 256 pulses
    					*((unsigned int*)(AXI_REG_ARRAY_ptr + AXI_REG_ARRAY_page_offset+0x1c)) = 0x1;           //s_reg_h_out: enable TEST INJ pulses after INIT_TS



						*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x100000e1; //init_Ts = 1 //INJ =0 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1   enable Data taking =1
						*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x000000e1; //init_TS = 0 //INJ =0 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1   enable Data taking =1
						usleep(10000);

					    //read
										*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO
										*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
										data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0));
										printf("        : SIN     %8lx  ",data);
										data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0008));
										printf("                                                          : SIN1    %8lx  \n",data);
										//read Data
										  for (i=0;i<100;i++) {
											*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO
										  *((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
										  data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0));
										  if ((data == 0) || ((data&0xff000000) == 0xaf000000 ) ||((data&0xff000000) == 0xe0000000 ) ||((data&0xff000000) == 0xbf000000 ) ||((data&0xff000000) == 0xf0000000 ) )
											             printf("        : SIN     %8lx      TS=%8ld                                   ",data,data &0x7fffff);
										  else           printf("        : SIN     %8lx      DC=%2ld   PX=%3ld   TST=%3ld   TSL=%3ld    TOT=%4ld",data, (data >>24)&0x1f, (data >>16)&0x7f, (data >>8)&0xff, (data&0xff), ( ((data >>8)&0xff)) - (data&0xff) );

										  data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0008));
										  if ((data == 0) || ((data&0xff000000) == 0xaf000000 ) ||((data&0xff000000) == 0xe0000000 ) ||((data&0xff000000) == 0xbf000000 ) ||((data&0xff000000) == 0xf0000000 ) )
											             printf("        : SIN1    %8lx      TS=%8ld                                  \n",data,data &0x7fffff);
										  else           printf("        : SIN1    %8lx      DC=%2ld   PX=%3ld   TST=%3ld   TSL=%3ld    TOT=%4ld\n",data, (data >>24)&0x1f, (data >>16)&0x7f, (data >>8)&0xff, (data&0xff),( ((data >>8)&0xff)) - (data&0xff) );
										  }
										  //read EOF
										*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO
										*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
										data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0));
										printf("        : SIN     %8lx  ",data);
										data=*((unsigned int *)(status3_ptr + status3_in_page_offset+0x0008));
										printf("                                                          : SIN1    %8lx  \n",data);


						// *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00200000; // bit(21) // push UDP package
						// *((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = 0x00000000; //



                     };break;


                     case'x':  {


                    	// default values:
                    	   int CHIP_ADDR = ChipBoard_I2Caddr;

						   int ENINJ[32][16];
						 int ENSFOUT[32][16];
							int TDAC[32][16][4];
							int MASK[32][16];
							int ENHB[32][16];

							int PixReg[16];

						 //default Values:
							for (j=0;j<32;j++) for (i=0;i<16;i++) ENINJ[j][i]=0xff;
							for (j=0;j<32;j++) for (i=0;i<16;i++) ENSFOUT[j][i]=0;
							for (j=0;j<32;j++) for (i=0;i<16;i++) { TDAC[j][i][0]= 0xff; TDAC[j][i][1]= 0xff; TDAC[j][i][2]= 0xff; TDAC[j][i][3]= 0xff; }


							for(j=0;j<32;j++)  for (i=0;i<128;i++) td[j][i]=0;


                          //start TDAC calibration loop here!
						  //	for ( int TD_cal = 0;  TD_cal<10; TD_cal++) {

							for ( a=1480;  a>1299 ; a-=5) {


								*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x0;  //disable data taking


								//printf("\n enable CAR I2Cmux I2C3 ... \n");
								*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
								*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x08); 		// enable 3
								do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
								usleep(200);

								//printf("THR = "); scanf("%hd",&a);  fflush(stdin);   //read THR
								//a=1480;

								/*printf("set Bias_1 -> DEL_HI     ...\n");*/ 		CARwrite_DAC7678_channel( 0x4a, 0x00, 700); usleep(200);
								/*printf("set Bias_2 -> TH         ...\n");*/ 		CARwrite_DAC7678_channel( 0x4a, 0x02, a); usleep(200);
								/*printf("set Bias_3 -> DEL_LO     ...\n");*/ 	    CARwrite_DAC7678_channel( 0x4a, 0x04, 900); usleep(200);
								/*printf("set Bias_4 -> BL         ...\n");*/ 		CARwrite_DAC7678_channel( 0x4a, 0x06, 900); usleep(200);


							    CARwrite_DAC7678_channel( 0x4f, 0x06, 1000); // set INJ Pulse height
							    usleep(1000);

                                //init I2C:

                    						 //***************************** init AXI IIC ; set I2Cmux on ZC706 to FMC_HPC; enable all four ports on CAR board I2Cmux *******************************//

                    						 //*((unsigned int*)(IIC_ptr + IIC_page_offset+0x040)) = 0x0a; // soft reset

                    						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x120)) = 0x0f; // set IIC RX_FIFO DEPTH to max 0xf
                    						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x02; // reset IIC TX_FIFO
                    						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x01; // enable AXI IIC

                    						  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); /*printf("I2C status reg after reset: %x\n",IIC_status_register);*/

                    						  //printf("set I2Cmux on ZC706 to FMC HPC ... \n");
                    						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x74<<1)); // U65 ZC706 I2Cmux
                    						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x20); 		// enable II2C FMC HPC
                    						 for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));/*printf("I2C status reg after start: %x\n",IIC_status_register); */}//while (IIC_status_register != 0xc0);

                    						  usleep(200);

                    						  //printf("\n enable CAR I2Cmux I2C2 ... \n");
                    						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x04);
                    						  for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));/*printf("I2C status reg after start: %x\n",IIC_status_register); */}//while (IIC_status_register != 0xc0);
                    						  usleep(200);
                    						  //printf("xx1\n");


                    						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x120)) = 0x0f; // set IIC RX_FIFO DEPTH to max 0xf
                    						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x02; // reset IIC TX_FIFO
                    						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x01; // enable AXI IIC

                    						  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); /*printf("I2C status reg after reset: %x\n",IIC_status_register);*/

                    						  //printf("set I2Cmux on ZC706 to FMC HPC ... \n");
                    						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x74<<1)); // U65 ZC706 I2Cmux
                    						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x20); 		// enable II2C FMC HPC
                    						  for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));/*printf("I2C status reg after start: %x\n",IIC_status_register);*/ }//while (IIC_status_register != 0xc0);

                    						  usleep(200);

                    						  //printf("\n enable CAR I2Cmux I2C2 ... \n");
                    						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x04);
                    						  for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));/*printf("I2C status reg after start: %x\n",IIC_status_register);*/ }//while (IIC_status_register != 0xc0);
                    						  usleep(200);
                    						  //printf("xx2\n");









                    				 // start Configure -----------------------------------------------------------------------------------------------





                    					for (j=0;j<32;j++) for (i=0;i<16;i++) {







                    									TDAC[j][i][0]= ( ((td[j][(i*8)+0]) & 0x1) <<7 ) +
																	   ( ((td[j][(i*8)+1]) & 0x1) <<6 ) +
																	   ( ((td[j][(i*8)+2]) & 0x1) <<5 ) +
																	   ( ((td[j][(i*8)+3]) & 0x1) <<4 ) +
																	   ( ((td[j][(i*8)+4]) & 0x1) <<3 ) +
																	   ( ((td[j][(i*8)+5]) & 0x1) <<2 ) +
																	   ( ((td[j][(i*8)+6]) & 0x1) <<1 ) +
																	   ( ((td[j][(i*8)+7]) & 0x1)  );




														TDAC[j][i][1]= ( (((td[j][(i*8)+0]) & 0x2)>>1) <<7 ) +
																	   ( (((td[j][(i*8)+1]) & 0x2)>>1) <<6 ) +
																	   ( (((td[j][(i*8)+2]) & 0x2)>>1) <<5 ) +
																	   ( (((td[j][(i*8)+3]) & 0x2)>>1) <<4 ) +
																	   ( (((td[j][(i*8)+4]) & 0x2)>>1) <<3 ) +
																	   ( (((td[j][(i*8)+5]) & 0x2)>>1) <<2 ) +
																	   ( (((td[j][(i*8)+6]) & 0x2)>>1) <<1 ) +
																	   ( (((td[j][(i*8)+7]) & 0x2)>>1)  );



														TDAC[j][i][2]= ( (((td[j][(i*8)+0]) & 0x4)>>2) <<7 ) +
																	   ( (((td[j][(i*8)+1]) & 0x4)>>2) <<6 ) +
																	   ( (((td[j][(i*8)+2]) & 0x4)>>2) <<5 ) +
																	   ( (((td[j][(i*8)+3]) & 0x4)>>2) <<4 ) +
																	   ( (((td[j][(i*8)+4]) & 0x4)>>2) <<3 ) +
																	   ( (((td[j][(i*8)+5]) & 0x4)>>2) <<2 ) +
																	   ( (((td[j][(i*8)+6]) & 0x4)>>2) <<1 ) +
																	   ( (((td[j][(i*8)+7]) & 0x4)>>2)  );



														TDAC[j][i][3]= ( (((td[j][(i*8)+0]) & 0x8)>>3) <<7 ) +
																	   ( (((td[j][(i*8)+1]) & 0x8)>>3) <<6 ) +
																	   ( (((td[j][(i*8)+2]) & 0x8)>>3) <<5 ) +
																	   ( (((td[j][(i*8)+3]) & 0x8)>>3) <<4 ) +
																	   ( (((td[j][(i*8)+4]) & 0x8)>>3) <<3 ) +
																	   ( (((td[j][(i*8)+5]) & 0x8)>>3) <<2 ) +
																	   ( (((td[j][(i*8)+6]) & 0x8)>>3) <<1 ) +
																	   ( (((td[j][(i*8)+7]) & 0x8)>>3)  );
                    									    }

                    					for (j=0;j<32;j++) for (i=0;i<16;i++) MASK[j][i]=0x00;
                    					for (j=0;j<32;j++) for (i=0;i<16;i++) ENHB[j][i]=0;

                    				   //TDAC[6][12][0]= 0x08; TDAC[6][12][1]= 0x08; TDAC[6][12][2]= 0x00; TDAC[6][12][3]= 0x00;  // !!!!!!!! 6/100
                    				   //TDAC[6][12][0]= 0x04; TDAC[6][12][1]= 0x04; TDAC[6][12][2]= 0x04; TDAC[6][12][3]= 0x04;  // !!!!!!!! 6/101
                    				   //TDAC[3][8][0]= 0x08; TDAC[3][8][1]= 0x08; TDAC[3][8][2]= 0x00; TDAC[3][8][3]= 0x00;  // !!!!!!!! 3/68
                    				   //TDAC[6][13][0]= 0xff; TDAC[6][13][1]= 0xff; TDAC[6][13][2]= 0xff; TDAC[6][13][3]= 0xff;  // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                    				   //TDAC[6][14][0]= 0xff; TDAC[6][14][1]= 0xff; TDAC[6][14][2]= 0xff; TDAC[6][14][3]= 0xff;  // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


                    					unsigned long EOCreg_Sub_addr = 0x0000;
                    					unsigned long PIXreg_Sub_addr = 0x0000;
                    					int LD_switch=0;



                    				  //configuring DCOLs:
                    				 for (j=0;j<32;j++) {

                    					 EOCreg_Sub_addr =((0x10 + (j<<5)) & 0xffff); PIXreg_Sub_addr = (j<<5) & 0xffff;



                    //					 // freeze mode on
                    					 LD_switch=0x90;   for (i=0;i<16;i++) PixReg[i] =   ENINJ[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
                      				     LD_switch=0x91;   for (i=0;i<16;i++) PixReg[i] = ENSFOUT[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
                    					 LD_switch=0x92;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][0];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
                    					 LD_switch=0x93;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][1];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
                    					 LD_switch=0x94;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][2];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
                    					 LD_switch=0x95;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][3];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
                         				 LD_switch=0x96;   for (i=0;i<16;i++) PixReg[i] =    MASK[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
                    					 LD_switch=0x97;   for (i=0;i<16;i++) PixReg[i] =    ENHB[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);


                    				 }


            						 slow_control(CHIP_ADDR,0x01a0,0x57 ); 	// 	TEST ENABLE HB DC13 on - start Shift - LD switch
            						 //slow_control(CHIP_ADDR,0x01b0,0x73 ); 	// 	TDAC[1] DCOL 13 	readback enable
            						 //slow_control(CHIP_ADDR,0x01b0,0x7b ); 	// 	TDAC[1] DCOL 13 	readback enable shift
            						 slow_control(CHIP_ADDR,0x00d0,0x73 ); 	// 	TDAC[1] DCOL 6 	readback enable
            						 slow_control(CHIP_ADDR,0x00d0,0x7b ); 	// 	TDAC[1] DCOL 6 	readback enable shift

            						 slow_control(CHIP_ADDR,0x0400,0x00 );	//	CONF_REG_TSINI		timestamp counter set value = 0x00
            						 slow_control(CHIP_ADDR,0x0401,0x04 );	//	CONF_REG_TSCTRL  	[2] enable/disable slow control set    	[1] start counting = 0 / stop counting = 1    	[0] unused
            						 slow_control(CHIP_ADDR,0x0402,0x01 );	//	CU_CTRL														[1] debug readout mode							[0] normal readout mode
            						 slow_control(CHIP_ADDR,0x0403,0x00 );	//	TX_CTRL				[2] enable transmission					[1] debug readout mode							[0] normal readout mode

            						 slow_control(CHIP_ADDR,0x040e,0x0d );	//	EN_SER_OUT_DCOL		[4..0] DCOL addr
            						 slow_control(CHIP_ADDR,0x040f,0x00 );	//	EN_EXT_CTRL		    [3..0] not used in MPW4!
            						 slow_control(CHIP_ADDR,0x0410,0x0d );	//	EN_SFOUT_DCOL		[5]  disable all SFOUT DCOL outputs  	[4..0] DCOL addr for SFOUT  ( LD_switch 7 has also to be set in DCOL configuration ! )

            						  //bitwise not !!!
            						 slow_control(CHIP_ADDR,0x0417,0x13 );	//	VPCOMP  	0x2c
            						 slow_control(CHIP_ADDR,0x0418,0x24 );	//	VPTRIM  	0x1b
            						 slow_control(CHIP_ADDR,0x0419,0x32 );	//	VSENSBIAS  	0x0d

            						 slow_control(CHIP_ADDR,0x041a,0x26 );	//	VBLR      	0x19
            						 slow_control(CHIP_ADDR,0x041b,0x2d );	//	VNSF     	0x12
            						 slow_control(CHIP_ADDR,0x041c,0x12 );	//	VNFB     	0x2d
            						 slow_control(CHIP_ADDR,0x041d,0x26 );	//	VBFB     	0x19
            						 slow_control(CHIP_ADDR,0x041e,0x25 );	//	VPBIAS     	0x1a
            						 slow_control(CHIP_ADDR,0x041f,0x15 );	//	VN     		0x2a

                    				  /////////////////////////////////////////////////////////////////////////////////////////////////////////////



                    				//readback PAD_SOUT_PC CTRL2_ptr
                    				printf("\nPAD_SOUT_PC readback[hex]:\n");
                    				for (i=0;i<4;i++) {
                    				  //*((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = i;
                    				  *((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0))= (i<<4);
                    				  d=*((unsigned int *)(status0_ptr + status0_in_page_offset+0x0008)); //printf("%08x",d);

                    				  printf(" %02x",BitReverseTable256[((d>>24)&0xff)]);
                    				  printf(" %02x",BitReverseTable256[((d>>16)&0xff)]);
                    				  printf(" %02x",BitReverseTable256[((d>>8)&0xff)]);
                    				  printf(" %02x",BitReverseTable256[(d & 0xff)]);


                    				}
                    				printf("\n");
                    				 //sleep(0.2);
                    				 // end Configure  -----------------------------------------------------------------------------------------------




                    	 for (i=0;i<512;i++) { // clear Data FIFO
                    		*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO
                    		*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
                    	  }

                    	 *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x18 )) =  0x000000a5; //receive Data FIFO reset
                    	 *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x28 )) =  0x000000a5; //AXI4 stream reset
                    	 printf("reset FIFO....\n");

                    	 *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x18 )) =  0x000000a5; //receive Data FIFO reset
                    	 *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x28 )) =  0x000000a5; //AXI4 stream reset
                    	 printf("reset FIFO1....\n");







                         //////////////////////////////////////////////////////////////open shutter//////////////////////////////////////////////////////////////////////////////////////
                    	 // enable transmission
                    	     slow_control(CHIP_ADDR,0x0403,0x05 );	//	TX_CTRL				[2] enable transmission					[1] debug readout mode							[0] normal readout mode


                    	 //

                    			 //send INJECTION PULS
                    			 						*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x100e0; //INJ =1 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
                    			 						*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0xe0;    //INJ =0 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
                    	 usleep(1000);




                    	 // disable transmission
                    	 slow_control(CHIP_ADDR,0x0403,0x05 );	//	TX_CTRL				[2] enable transmission					[1] debug readout mode							[0] normal readout mode

                         ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                    			 char buff[1024];
                    			 int read_length = 256;
                    			   //AXI FIFO
                    			   // Read value from FIFO////////////////////////////////////////////////////////////
                    			  do {
                    				      for (i=0;i<1024 ;i++) TCP_char_buf[i]=0;
                    			          *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x00 ))=0xfffc0000; // reset Interrupt Status Registers
                    					  value = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x00 )); printf("Interrupt Status Register:  %8x\n",value);
                    					  	  if (((value>>30)&0x1) == 0x1) printf ("                                                             read has gone beyond the current packet and removed data from next packet !\n");
                    					  value = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x1c )); printf("receive data FIFO occupancy register:  %4d\n",value);
                    //					  value = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x24 )); printf("receive length register:  %08x\n",value);
                    //					  printf("reading FIFO....\n");
                    //


                    					  //int read_length = 128;

                    					  //if (value < read_length) read_length = value;

                    					  if (value > 256 ) read_length = 256; else read_length = value;

                    					  s=0;
                    					  //for (i=0;i<((value)*4);i+=4) { //read 4 bytes
                    					  for (i=0;i<(read_length*4);i+=4) { //read 4 bytes
                    						 data = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x20));
                    						 TCP_char_buf[s] = ((data&0xff000000)>>24); TCP_char_buf[s+1] = ((data&0xff0000)>>16); TCP_char_buf[s+2] = ((data&0xff00)>>8); TCP_char_buf[s+3] = ((data&0xff)); s+=4;
                    						 if ((data == 0) || ((data&0xff000000) == 0xaf000000 ) || ((data&0xff000000) == 0xbf000000 ) || ((data&0xff000000) == 0xe0000000 ) || ((data&0xff000000) == 0xf0000000 ) ) i=i;
                    					     else     {
                                                 printf("   %5d     : SIN     %8lx      DC=%2ld   PX=%3ld   TST=%3ld   TSL=%3ld    TOT=%3ld\n",i/4,data, (data >>24)&0x1f, (data >>16)&0x7f, (data >>8)&0xff, (data&0xff), ( ((data >>8)&0xff)) - (data&0xff) );
                    					    	 if(td[(data >>24)&0x1f][(data >>16)&0x7f] < 15) td[(data >>24)&0x1f][(data >>16)&0x7f]++;

                    					     }
                    						 //printf("   %5d     : SIN_AXI_FIFO    %8lx  \n",i/4,data);
                    					  }

                    					  if (s>0) {
                    	//				    write(connfd, TCP_char_buf, 1024);//  write TCP IP packet  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP TCP  TCP  TCP  TCP  TCP  TCP write packet
                                            printf("Size of Buffer = %d\n",sizeof(TCP_char_buf));    }

                    					  value = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x00 )); printf("Interrupt Status Register:  %8x\n",value);
                    					      if (((value>>30)&0x1) == 0x1) printf ("                                                             read has gone beyond the current packet and removed data from next packet !\n");
                    					      if (((value>>19)&0x1) == 0x1) printf ("                                                             difference between read and write pointers reach EMPTY level !\n");
                    					  value = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x1c )); printf("receive data FIFO occupancy register:  %4d\n",value);
                    //					  value = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x24 )); printf("receive length register:  %08x\n",value);

                    						  // Piggy AXI FIFO
                    						 //value = *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x1c )); printf("receive data FIFO1 occupancy register: %4d\n",value);
                    //						 printf("reading FIFO1....\n");
                    //
                    //						// for (i=0;i<value*4;i+=4) { //read 4 bytes
                    //						 for (i=0;i<16*4;i+=4) { //read 4 bytes
                    //							 data = *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x20));
                    //							 printf("        : SIN1_AXI_FIFO    %8lx  \n",data);
                    //							}
                    			   } while (value != 0);   // streaming !!!






                            } // end TD cal loop

							for(j=0;j<32;j++) { printf("\n"); for (i=0;i<128;i++) printf(" %2d",td[j][i]);}

							// write TD file //////////////////////////////////////////////
							       TD_base=fopen("//home//root/TD_base.txt","w");
							       for(j=0;j<32;j++) {for (i=0;i<128;i++) fprintf(TD_base," %2d",td[j][i]); fprintf(TD_base,"\n"); }
							       fclose(TD_base);

							printf("\n");
							for (j=0;j<32;j++) { printf("\n"); for (i=0;i<16;i++) printf(" %2x",TDAC[j][i][0]); }
							printf("\n");
							for (j=0;j<32;j++) { printf("\n"); for (i=0;i<16;i++) printf(" %2x",TDAC[j][i][1]); }
							printf("\n");
							for (j=0;j<32;j++) { printf("\n"); for (i=0;i<16;i++) printf(" %2x",TDAC[j][i][2]); }
							printf("\n");
						    for (j=0;j<32;j++) { printf("\n"); for (i=0;i<16;i++) printf(" %2x",TDAC[j][i][3]); }

						    // read TD file //////////////////////////////////////////////
								   TD_base=fopen("//home//root/TD_base.txt","r");
								   for(j=0;j<32;j++) {
									   for (i=0;i<128;i++) { fscanf(TD_base,"%2d",&data); td[j][i]=data; }

                                   }
								   fclose(TD_base);


								   for(j=0;j<32;j++) { printf("\n"); for (i=0;i<128;i++) printf(" %2d",td[j][i]);}

                    	   };break;


                     case'y':  {


                                        	// default values:
                    	                     CHIP_ADDR = PiggyBoard_I2Caddr;

                    						   int ENINJ[32][16];
                    						 int ENSFOUT[32][16];
                    							int TDAC[32][16][4];
                    							int MASK[32][16];
                    							int ENHB[32][16];

                    							int PixReg[16];

                    						 //default Values:
                    							for (j=0;j<32;j++) for (i=0;i<16;i++) ENINJ[j][i]=0xff;
                    							for (j=0;j<32;j++) for (i=0;i<16;i++) ENSFOUT[j][i]=0;
                    							for (j=0;j<32;j++) for (i=0;i<16;i++) { TDAC[j][i][0]= 0xff; TDAC[j][i][1]= 0xff; TDAC[j][i][2]= 0xff; TDAC[j][i][3]= 0xff; }


                    							for(j=0;j<32;j++)  for (i=0;i<128;i++) td_p[j][i]=0;


                                              //start TDAC calibration loop here!
                    						  //	for ( int TD_cal = 0;  TD_cal<10; TD_cal++) {

                    							for ( a=1480;  a>1299 ; a-=5) {


                    								*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x0;  //disable data taking


                    								//printf("\n enable CAR I2Cmux I2C3 ... \n");
                    								*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
                    								*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x08); 		// enable 3
                    								do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
                    								usleep(200);

                    								//printf("THR = "); scanf("%hd",&a);  fflush(stdin);   //read THR
                    								//a=1480;

                    								/*printf("set Bias_1 -> DEL_HI     ...\n");*/ 		CARwrite_DAC7678_channel( 0x4a, 0x00, 700); usleep(200);
                    								/*printf("set Bias_2 -> TH         ...\n");*/ 		CARwrite_DAC7678_channel( 0x4a, 0x02, a); usleep(200);
                    								/*printf("set Bias_3 -> DEL_LO     ...\n");*/ 	    CARwrite_DAC7678_channel( 0x4a, 0x04, 900); usleep(200);
                    								/*printf("set Bias_4 -> BL         ...\n");*/ 		CARwrite_DAC7678_channel( 0x4a, 0x06, 900); usleep(200);


                    							    CARwrite_DAC7678_channel( 0x4f, 0x06, 1000); // set INJ Pulse height
                    							    usleep(1000);

                                                    //init I2C:

                                        						 //***************************** init AXI IIC ; set I2Cmux on ZC706 to FMC_HPC; enable all four ports on CAR board I2Cmux *******************************//

                                        						 //*((unsigned int*)(IIC_ptr + IIC_page_offset+0x040)) = 0x0a; // soft reset

                                        						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x120)) = 0x0f; // set IIC RX_FIFO DEPTH to max 0xf
                                        						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x02; // reset IIC TX_FIFO
                                        						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x01; // enable AXI IIC

                                        						  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); /*printf("I2C status reg after reset: %x\n",IIC_status_register);*/

                                        						  //printf("set I2Cmux on ZC706 to FMC HPC ... \n");
                                        						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x74<<1)); // U65 ZC706 I2Cmux
                                        						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x20); 		// enable II2C FMC HPC
                                        						 for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));/*printf("I2C status reg after start: %x\n",IIC_status_register); */}//while (IIC_status_register != 0xc0);

                                        						  usleep(200);

                                        						  //printf("\n enable CAR I2Cmux I2C2 ... \n");
                                        						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x04);
                                        						  for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));/*printf("I2C status reg after start: %x\n",IIC_status_register); */}//while (IIC_status_register != 0xc0);
                                        						  usleep(200);
                                        						  //printf("xx1\n");


                                        						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x120)) = 0x0f; // set IIC RX_FIFO DEPTH to max 0xf
                                        						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x02; // reset IIC TX_FIFO
                                        						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x01; // enable AXI IIC

                                        						  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); /*printf("I2C status reg after reset: %x\n",IIC_status_register);*/

                                        						  //printf("set I2Cmux on ZC706 to FMC HPC ... \n");
                                        						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x74<<1)); // U65 ZC706 I2Cmux
                                        						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x20); 		// enable II2C FMC HPC
                                        						  for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));/*printf("I2C status reg after start: %x\n",IIC_status_register);*/ }//while (IIC_status_register != 0xc0);

                                        						  usleep(200);

                                        						  //printf("\n enable CAR I2Cmux I2C2 ... \n");
                                        						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x04);
                                        						  for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));/*printf("I2C status reg after start: %x\n",IIC_status_register);*/ }//while (IIC_status_register != 0xc0);
                                        						  usleep(200);
                                        						  //printf("xx2\n");









                                        				 // start Configure -----------------------------------------------------------------------------------------------





                                        					for (j=0;j<32;j++) for (i=0;i<16;i++) {







                                        									TDAC[j][i][0]= ( ((td_p[j][(i*8)+0]) & 0x1) <<7 ) +
                    																	   ( ((td_p[j][(i*8)+1]) & 0x1) <<6 ) +
                    																	   ( ((td_p[j][(i*8)+2]) & 0x1) <<5 ) +
                    																	   ( ((td_p[j][(i*8)+3]) & 0x1) <<4 ) +
                    																	   ( ((td_p[j][(i*8)+4]) & 0x1) <<3 ) +
                    																	   ( ((td_p[j][(i*8)+5]) & 0x1) <<2 ) +
                    																	   ( ((td_p[j][(i*8)+6]) & 0x1) <<1 ) +
                    																	   ( ((td_p[j][(i*8)+7]) & 0x1)  );




                    														TDAC[j][i][1]= ( (((td_p[j][(i*8)+0]) & 0x2)>>1) <<7 ) +
                    																	   ( (((td_p[j][(i*8)+1]) & 0x2)>>1) <<6 ) +
                    																	   ( (((td_p[j][(i*8)+2]) & 0x2)>>1) <<5 ) +
                    																	   ( (((td_p[j][(i*8)+3]) & 0x2)>>1) <<4 ) +
                    																	   ( (((td_p[j][(i*8)+4]) & 0x2)>>1) <<3 ) +
                    																	   ( (((td_p[j][(i*8)+5]) & 0x2)>>1) <<2 ) +
                    																	   ( (((td_p[j][(i*8)+6]) & 0x2)>>1) <<1 ) +
                    																	   ( (((td_p[j][(i*8)+7]) & 0x2)>>1)  );



                    														TDAC[j][i][2]= ( (((td_p[j][(i*8)+0]) & 0x4)>>2) <<7 ) +
                    																	   ( (((td_p[j][(i*8)+1]) & 0x4)>>2) <<6 ) +
                    																	   ( (((td_p[j][(i*8)+2]) & 0x4)>>2) <<5 ) +
                    																	   ( (((td_p[j][(i*8)+3]) & 0x4)>>2) <<4 ) +
                    																	   ( (((td_p[j][(i*8)+4]) & 0x4)>>2) <<3 ) +
                    																	   ( (((td_p[j][(i*8)+5]) & 0x4)>>2) <<2 ) +
                    																	   ( (((td_p[j][(i*8)+6]) & 0x4)>>2) <<1 ) +
                    																	   ( (((td_p[j][(i*8)+7]) & 0x4)>>2)  );



                    														TDAC[j][i][3]= ( (((td_p[j][(i*8)+0]) & 0x8)>>3) <<7 ) +
                    																	   ( (((td_p[j][(i*8)+1]) & 0x8)>>3) <<6 ) +
                    																	   ( (((td_p[j][(i*8)+2]) & 0x8)>>3) <<5 ) +
                    																	   ( (((td_p[j][(i*8)+3]) & 0x8)>>3) <<4 ) +
                    																	   ( (((td_p[j][(i*8)+4]) & 0x8)>>3) <<3 ) +
                    																	   ( (((td_p[j][(i*8)+5]) & 0x8)>>3) <<2 ) +
                    																	   ( (((td_p[j][(i*8)+6]) & 0x8)>>3) <<1 ) +
                    																	   ( (((td_p[j][(i*8)+7]) & 0x8)>>3)  );
                                        									    }

                                        					for (j=0;j<32;j++) for (i=0;i<16;i++) MASK[j][i]=0x00;
                                        					for (j=0;j<32;j++) for (i=0;i<16;i++) ENHB[j][i]=0;

                                        				   //TDAC[6][12][0]= 0x08; TDAC[6][12][1]= 0x08; TDAC[6][12][2]= 0x00; TDAC[6][12][3]= 0x00;  // !!!!!!!! 6/100
                                        				   //TDAC[6][12][0]= 0x04; TDAC[6][12][1]= 0x04; TDAC[6][12][2]= 0x04; TDAC[6][12][3]= 0x04;  // !!!!!!!! 6/101
                                        				   //TDAC[3][8][0]= 0x08; TDAC[3][8][1]= 0x08; TDAC[3][8][2]= 0x00; TDAC[3][8][3]= 0x00;  // !!!!!!!! 3/68
                                        				   //TDAC[6][13][0]= 0xff; TDAC[6][13][1]= 0xff; TDAC[6][13][2]= 0xff; TDAC[6][13][3]= 0xff;  // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                                        				   //TDAC[6][14][0]= 0xff; TDAC[6][14][1]= 0xff; TDAC[6][14][2]= 0xff; TDAC[6][14][3]= 0xff;  // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


                                        					unsigned long EOCreg_Sub_addr = 0x0000;
                                        					unsigned long PIXreg_Sub_addr = 0x0000;
                                        					int LD_switch=0;



                                        				  //configuring DCOLs:
                                        				 for (j=0;j<32;j++) {

                                        					 EOCreg_Sub_addr =((0x10 + (j<<5)) & 0xffff); PIXreg_Sub_addr = (j<<5) & 0xffff;



                                        //					 // freeze mode on
                                        					 LD_switch=0x90;   for (i=0;i<16;i++) PixReg[i] =   ENINJ[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
                                          				     LD_switch=0x91;   for (i=0;i<16;i++) PixReg[i] = ENSFOUT[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
                                        					 LD_switch=0x92;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][0];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
                                        					 LD_switch=0x93;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][1];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
                                        					 LD_switch=0x94;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][2];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
                                        					 LD_switch=0x95;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][3];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
                                             				 LD_switch=0x96;   for (i=0;i<16;i++) PixReg[i] =    MASK[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
                                        					 LD_switch=0x97;   for (i=0;i<16;i++) PixReg[i] =    ENHB[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);


                                        				 }

                                        				 slow_control(CHIP_ADDR,0x01a0,0x57 ); 	// 	TEST ENABLE HB DC13 on - start Shift - LD switch
                                        			     //slow_control(CHIP_ADDR,0x01b0,0x73 ); 	// 	TDAC[1] DCOL 13 	readback enable
                                        			     //slow_control(CHIP_ADDR,0x01b0,0x7b ); 	// 	TDAC[1] DCOL 13 	readback enable shift
                                        			     slow_control(CHIP_ADDR,0x00d0,0x73 ); 	// 	TDAC[1] DCOL 6 	readback enable
                                        			     slow_control(CHIP_ADDR,0x00d0,0x7b ); 	// 	TDAC[1] DCOL 6 	readback enable shift

                                        			     slow_control(CHIP_ADDR,0x0400,0x00 );	//	CONF_REG_TSINI		timestamp counter set value = 0x00
                                        			     slow_control(CHIP_ADDR,0x0401,0x04 );	//	CONF_REG_TSCTRL  	[2] enable/disable slow control set    	[1] start counting = 0 / stop counting = 1    	[0] unused
                                        			     slow_control(CHIP_ADDR,0x0402,0x01 );	//	CU_CTRL														[1] debug readout mode							[0] normal readout mode
                                        			     slow_control(CHIP_ADDR,0x0403,0x00 );	//	TX_CTRL				[2] enable transmission					[1] debug readout mode							[0] normal readout mode

                                        			     slow_control(CHIP_ADDR,0x040e,0x0d );	//	EN_SER_OUT_DCOL		[4..0] DCOL addr
                                        			     slow_control(CHIP_ADDR,0x040f,0x00 );	//	EN_EXT_CTRL		    [3..0] not used in MPW4!
                                        			     slow_control(CHIP_ADDR,0x0410,0x0d );	//	EN_SFOUT_DCOL		[5]  disable all SFOUT DCOL outputs  	[4..0] DCOL addr for SFOUT  ( LD_switch 7 has also to be set in DCOL configuration ! )

                                        			      //bitwise not !!!
                                        			     slow_control(CHIP_ADDR,0x0417,0x13 );	//	VPCOMP  	0x2c
                                        			     slow_control(CHIP_ADDR,0x0418,0x24 );	//	VPTRIM  	0x1b
                                        			     slow_control(CHIP_ADDR,0x0419,0x32 );	//	VSENSBIAS  	0x0d

                                        			     slow_control(CHIP_ADDR,0x041a,0x26 );	//	VBLR      	0x19
                                        			     slow_control(CHIP_ADDR,0x041b,0x2d );	//	VNSF     	0x12
                                        			     slow_control(CHIP_ADDR,0x041c,0x12 );	//	VNFB     	0x2d
                                        			     slow_control(CHIP_ADDR,0x041d,0x26 );	//	VBFB     	0x19
                                        			     slow_control(CHIP_ADDR,0x041e,0x25 );	//	VPBIAS     	0x1a
                                        			     slow_control(CHIP_ADDR,0x041f,0x15 );	//	VN     		0x2a

                                        				  /////////////////////////////////////////////////////////////////////////////////////////////////////////////



                                        				//readback PAD_SOUT_PC CTRL2_ptr
                                        				printf("\nPAD_SOUT_PC readback[hex]:\n");
                                        				for (i=0;i<4;i++) {
                                        				  //*((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = i;
                                        				  *((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0))= (i<<4);
                                        				  d=*((unsigned int *)(status0_ptr + status0_in_page_offset+0x0008)); //printf("%08x",d);

                                        				  printf(" %02x",BitReverseTable256[((d>>24)&0xff)]);
                                        				  printf(" %02x",BitReverseTable256[((d>>16)&0xff)]);
                                        				  printf(" %02x",BitReverseTable256[((d>>8)&0xff)]);
                                        				  printf(" %02x",BitReverseTable256[(d & 0xff)]);


                                        				}
                                        				printf("\n");
                                        				 //sleep(0.2);
                                        				 // end Configure  -----------------------------------------------------------------------------------------------




                                        	 for (i=0;i<512;i++) { // clear Data FIFO
                                        		*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO
                                        		*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
                                        	  }

                                        	 *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x18 )) =  0x000000a5; //receive Data FIFO reset
                                        	 *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x28 )) =  0x000000a5; //AXI4 stream reset
                                        	 printf("reset FIFO....\n");

                                        	 *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x18 )) =  0x000000a5; //receive Data FIFO reset
                                        	 *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x28 )) =  0x000000a5; //AXI4 stream reset
                                        	 printf("reset FIFO1....\n");







                                             //////////////////////////////////////////////////////////////open shutter//////////////////////////////////////////////////////////////////////////////////////
                                        	 // enable transmission
                                        	   slow_control(CHIP_ADDR,0x0403,0x05 );	//	TX_CTRL				[2] enable transmission					[1] debug readout mode							[0] normal readout mode


                                        	 //

                                        			 //send INJECTION PULS
                                        			 						*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x100e0; //INJ =1 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
                                        			 						*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0xe0;    //INJ =0 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
                                        	 usleep(1000);




                                        	 // disable transmission
                                        	   slow_control(CHIP_ADDR,0x0403,0x00 );	//	TX_CTRL				[2] enable transmission					[1] debug readout mode							[0] normal readout mode
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                                        			 char buff[1024];
                                        			 int read_length = 256;



                                        			  // Piggy AXI FIFO

                                        					  do {
                                        								  for (i=0;i<1024 ;i++) TCP_char_buf[i]=0;
                                        								  *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x00 ))=0xfffc0000; // reset Interrupt Status Registers
                                        								  value = *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x00 )); printf("Interrupt Status Register:  %8x\n",value);
                                        									  if (((value>>30)&0x1) == 0x1) printf ("                                                             read has gone beyond the current packet and removed data from next packet !\n");
                                        								  value = *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x1c )); printf("receive data FIFO occupancy register:  %4d\n",value);
                                        			 //					  value = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x24 )); printf("receive length register:  %08x\n",value);
                                        			 //					  printf("reading FIFO....\n");
                                        			 //
                                        						//		  fprintf(heatmap_piggy, "%hd\n",value );

                                        								  //int read_length = 128;

                                        								  //if (value < read_length) read_length = value;

                                        								  if (value > 256 ) read_length = 256; else read_length = value;

                                        								  s=0;
                                        								  //for (i=0;i<((value)*4);i+=4) { //read 4 bytes
                                        								  for (i=0;i<(read_length*4);i+=4) { //read 4 bytes
                                        									 data = *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x20));
                                        									 TCP_char_buf[s] = ((data&0xff000000)>>24); TCP_char_buf[s+1] = ((data&0xff0000)>>16); TCP_char_buf[s+2] = ((data&0xff00)>>8); TCP_char_buf[s+3] = ((data&0xff)); s+=4;
                                        									 if ((data == 0) || ((data&0xff000000) == 0xaf000000 ) || ((data&0xff000000) == 0xbf000000 ) || ((data&0xff000000) == 0xe0000000 ) || ((data&0xff000000) == 0xf0000000 ) ) i=i;
                                        									 else     {
                                        									           printf("   %5d     : SIN1     %8lx      DC=%2ld   PX=%3ld   TST=%3ld   TSL=%3ld    TOT=%3ld\n",i/4,data, (data >>24)&0x1f, (data >>16)&0x7f, (data >>8)&0xff, (data&0xff), ( ((data >>8)&0xff)) - (data&0xff) );
                                        									           if(td_p[(data >>24)&0x1f][(data >>16)&0x7f] < 15) td_p[(data >>24)&0x1f][(data >>16)&0x7f]++;

                                        									 }

                                        								  }

                                        								  if (s>0) {
                                        				//				    write(connfd, TCP_char_buf, 1024);//  write TCP IP packet  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP TCP  TCP  TCP  TCP  TCP  TCP write packet
                                        									 printf("Size of Buffer = %d\n",sizeof(TCP_char_buf));    }

                                        								  value = *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x00 )); printf("Interrupt Status Register:  %8x\n",value);
                                        									  if (((value>>30)&0x1) == 0x1) printf ("                                                             read has gone beyond the current packet and removed data from next packet !\n");
                                        									  if (((value>>19)&0x1) == 0x1) printf ("                                                             difference between read and write pointers reach EMPTY level !\n");
                                        								  value = *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x1c )); printf("receive data FIFO occupancy register:  %4d\n",value);
                                        			 //					  value = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x24 )); printf("receive length register:  %08x\n",value);


                                        						   } while (value != 0);   // streaming !!!






                                                } // end TD_p cal loop

                    							for(j=0;j<32;j++) { printf("\n"); for (i=0;i<128;i++) printf(" %2d",td_p[j][i]);}

                    							// write TD file //////////////////////////////////////////////
                    							       TD_piggy=fopen("//home//root/TD_piggy.txt","w");
                    							       for(j=0;j<32;j++) {for (i=0;i<128;i++) fprintf(TD_piggy," %2d",td_p[j][i]); fprintf(TD_piggy,"\n"); }
                    							       fclose(TD_piggy);

                    							printf("\n");
                    							for (j=0;j<32;j++) { printf("\n"); for (i=0;i<16;i++) printf(" %2x",TDAC[j][i][0]); }
                    							printf("\n");
                    							for (j=0;j<32;j++) { printf("\n"); for (i=0;i<16;i++) printf(" %2x",TDAC[j][i][1]); }
                    							printf("\n");
                    							for (j=0;j<32;j++) { printf("\n"); for (i=0;i<16;i++) printf(" %2x",TDAC[j][i][2]); }
                    							printf("\n");
                    						    for (j=0;j<32;j++) { printf("\n"); for (i=0;i<16;i++) printf(" %2x",TDAC[j][i][3]); }

                    						    // read TD file //////////////////////////////////////////////
                    								   TD_piggy=fopen("//home//root/TD_piggy.txt","r");
                    								   for(j=0;j<32;j++) {
                    									   for (i=0;i<128;i++) { fscanf(TD_piggy,"%2d",&data); td_p[j][i]=data; }

                                                       }
                    								   fclose(TD_piggy);


                    								   for(j=0;j<32;j++) { printf("\n"); for (i=0;i<128;i++) printf(" %2d",td_p[j][i]);}

                                        	   };break;




                     case'z':  {



                    	    heatmap_data=fopen("//home//root/heatmap.txt","w");
                    	    heatmap_piggy=fopen("//home//root/heatmap1.txt","w");

                    	    *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x0;  //disable data taking


                    	    //printf("\n enable CAR I2Cmux I2C3 ... \n");
                    		*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
                    		*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x08); 		// enable 3
                    		do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
                    		usleep(200);

                    		printf("THR = "); scanf("%hd",&a);  fflush(stdin);   //read THR
                    		fprintf(heatmap_data, "%hd\n",a );
                    		fprintf(heatmap_piggy, "%hd\n",a );

                    		printf("set Bias_1 -> DEL_HI     ...\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x00, 700); usleep(200);
                    		printf("set Bias_2 -> TH         ...\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x02, a); usleep(200);
                    		printf("set Bias_3 -> DEL_LO     ...\n"); 	    CARwrite_DAC7678_channel( 0x4a, 0x04, 900); usleep(200);
                    		printf("set Bias_4 -> BL         ...\n"); 		CARwrite_DAC7678_channel( 0x4a, 0x06, 900); usleep(200);


                    							     					 				    CARwrite_DAC7678_channel( 0x4f, 0x06, 400); // set INJ Pulse height
                    							     					 				    usleep(1000);




                    	 printf("reset I2C:\n");

						 //***************************** init AXI IIC ; set I2Cmux on ZC706 to FMC_HPC; enable all four ports on CAR board I2Cmux *******************************//

						 //*((unsigned int*)(IIC_ptr + IIC_page_offset+0x040)) = 0x0a; // soft reset

						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x120)) = 0x0f; // set IIC RX_FIFO DEPTH to max 0xf
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x02; // reset IIC TX_FIFO
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x01; // enable AXI IIC

						  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); /*printf("I2C status reg after reset: %x\n",IIC_status_register);*/

						  //printf("set I2Cmux on ZC706 to FMC HPC ... \n");
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x74<<1)); // U65 ZC706 I2Cmux
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x20); 		// enable II2C FMC HPC
						 for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));/*printf("I2C status reg after start: %x\n",IIC_status_register); */}//while (IIC_status_register != 0xc0);

						  usleep(200);

						  //printf("\n enable CAR I2Cmux I2C2 ... \n");
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x04);
						  for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));/*printf("I2C status reg after start: %x\n",IIC_status_register); */}//while (IIC_status_register != 0xc0);
						  usleep(200);
						  //printf("xx1\n");


						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x120)) = 0x0f; // set IIC RX_FIFO DEPTH to max 0xf
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x02; // reset IIC TX_FIFO
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x01; // enable AXI IIC

						  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); /*printf("I2C status reg after reset: %x\n",IIC_status_register);*/

						  //printf("set I2Cmux on ZC706 to FMC HPC ... \n");
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x74<<1)); // U65 ZC706 I2Cmux
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x20); 		// enable II2C FMC HPC
						  for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));/*printf("I2C status reg after start: %x\n",IIC_status_register);*/ }//while (IIC_status_register != 0xc0);

						  usleep(200);

						  //printf("\n enable CAR I2Cmux I2C2 ... \n");
						  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x04);
						  for(i=0;i<10;i++){ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));/*printf("I2C status reg after start: %x\n",IIC_status_register);*/ }//while (IIC_status_register != 0xc0);
						  usleep(200);
						  //printf("xx2\n");





			   printf("Unmask all pixels:\n");



				 // start Configure BASE-----------------------------------------------------------------------------------------------

				  int CHIP_ADDR = ChipBoard_I2Caddr;
				  //int CHIP_ADDR = 0x57;  // EEPROM test !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

				   int ENINJ[32][16];
				 int ENSFOUT[32][16];
					int TDAC[32][16][4];
					int MASK[32][16];
					int ENHB[32][16];

					int PixReg[16];

				 //default Values:
					for (j=0;j<32;j++) for (i=0;i<16;i++) ENINJ[j][i]=0x00;

					for (j=12;j<20;j++) for (i=8;i<12;i++) ENINJ[j][i]=0xff; ////////////-------------------------

					for (j=0;j<32;j++) for (i=0;i<16;i++) ENSFOUT[j][i]=0;
					for (j=0;j<32;j++) for (i=0;i<16;i++) { TDAC[j][i][0]= 0x00; TDAC[j][i][1]= 0x00; TDAC[j][i][2]= 0x00; TDAC[j][i][3]= 0x00; }


					for(j=0;j<32;j++)  for (i=0;i<128;i++) td[j][i]=0;

					  // read TD file //////////////////////////////////////////////
					   TD_base=fopen("//home//root/TD_base.txt","r");
					   for(j=0;j<32;j++) {
						   for (i=0;i<128;i++) { fscanf(TD_base,"%2d",&data); td[j][i]=data; }

					   }
					   fclose(TD_base);



					for (j=0;j<32;j++) for (i=0;i<16;i++) {




									    	TDAC[j][i][0]= ( ((td[j][(i*8)+7]) & 0x1) <<7 ) +
							                               ( ((td[j][(i*8)+6]) & 0x1) <<6 ) +
							                               ( ((td[j][(i*8)+5]) & 0x1) <<5 ) +
							                               ( ((td[j][(i*8)+4]) & 0x1) <<4 ) +
							                               ( ((td[j][(i*8)+3]) & 0x1) <<3 ) +
							                               ( ((td[j][(i*8)+2]) & 0x1) <<2 ) +
							                               ( ((td[j][(i*8)+1]) & 0x1) <<1 ) +
							                               ( ((td[j][(i*8)+0]) & 0x1)  );




									    	TDAC[j][i][1]= ( (((td[j][(i*8)+7]) & 0x2)>>1) <<7 ) +
														   ( (((td[j][(i*8)+6]) & 0x2)>>1) <<6 ) +
														   ( (((td[j][(i*8)+5]) & 0x2)>>1) <<5 ) +
														   ( (((td[j][(i*8)+4]) & 0x2)>>1) <<4 ) +
														   ( (((td[j][(i*8)+3]) & 0x2)>>1) <<3 ) +
														   ( (((td[j][(i*8)+2]) & 0x2)>>1) <<2 ) +
														   ( (((td[j][(i*8)+1]) & 0x2)>>1) <<1 ) +
														   ( (((td[j][(i*8)+0]) & 0x2)>>1)  );



									    	TDAC[j][i][2]= ( (((td[j][(i*8)+7]) & 0x4)>>2) <<7 ) +
														   ( (((td[j][(i*8)+6]) & 0x4)>>2) <<6 ) +
														   ( (((td[j][(i*8)+5]) & 0x4)>>2) <<5 ) +
														   ( (((td[j][(i*8)+4]) & 0x4)>>2) <<4 ) +
														   ( (((td[j][(i*8)+3]) & 0x4)>>2) <<3 ) +
														   ( (((td[j][(i*8)+2]) & 0x4)>>2) <<2 ) +
														   ( (((td[j][(i*8)+1]) & 0x4)>>2) <<1 ) +
														   ( (((td[j][(i*8)+0]) & 0x4)>>2)  );



									    	TDAC[j][i][3]= ( (((td[j][(i*8)+7]) & 0x8)>>3) <<7 ) +
														   ( (((td[j][(i*8)+6]) & 0x8)>>3) <<6 ) +
														   ( (((td[j][(i*8)+5]) & 0x8)>>3) <<5 ) +
														   ( (((td[j][(i*8)+4]) & 0x8)>>3) <<4 ) +
														   ( (((td[j][(i*8)+3]) & 0x8)>>3) <<3 ) +
														   ( (((td[j][(i*8)+2]) & 0x8)>>3) <<2 ) +
														   ( (((td[j][(i*8)+1]) & 0x8)>>3) <<1 ) +
														   ( (((td[j][(i*8)+0]) & 0x8)>>3)  );
									    }

for (j=0;j<32;j++) for (i=0;i<16;i++) { TDAC[j][i][0]= 0xff; TDAC[j][i][1]= 0xff; TDAC[j][i][2]= 0xff; TDAC[j][i][3]= 0x00; }  //////////////////////// DEFAULT TDAC = 7 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


					for (j=0;j<32;j++) for (i=0;i<16;i++) MASK[j][i]=0x00;
				//	for (j=12;j<20;j++) for (i=8;i<12;i++) MASK[j][i]=0x00; ////////////-------------------------

					for (j=0;j<32;j++) for (i=0;i<16;i++) ENHB[j][i]=0;

//|11111111|11111111|11111111|1111
//|22222222|11111111|11000000|00009999|99999988|88888888|77777777|77666666|66665555|55555544|44444444|33333333|33222222|22221111|111111
//|76543210|98765432|10987654|32109876|54321098|76543210|98765432|10987654|32109876|54321098|76543210|98765432|10987654|32109876|54321098|76543210|

//   1         1        1         1        1       1
//   5         4        3         2        1       0        9         8        7        6        5        4        3        2        1        0


					//mask [23/17]
					MASK[23][2]=0x40;
					//mask [8/16]
					MASK[8][2]=0x80;
					//mask    [26/68]
					MASK[26][8]=0x08;


					//mask bottom half
					//for (j=0;j<32;j++) for (i=0;i<8;i++) MASK[j][i]=0xff;

					unsigned long EOCreg_Sub_addr = 0x0000;
					unsigned long PIXreg_Sub_addr = 0x0000;
					int LD_switch=0;



				  //configuring DCOLs:
				 for (j=0;j<32;j++) {

					 EOCreg_Sub_addr =((0x10 + (j<<5)) & 0xffff); PIXreg_Sub_addr = (j<<5) & 0xffff;

					 // LD_switch : [6]EnableHitBus = 1  [4]EnableReadout = 1    =>  "0101 0xxx"   xxx => LDbit

//					 LD_switch=0x10;   for (i=0;i<16;i++) PixReg[i] =   ENINJ[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
//					 LD_switch=0x11;   for (i=0;i<16;i++) PixReg[i] = ENSFOUT[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
//					 LD_switch=0x12;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][0];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
//					 LD_switch=0x13;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][1];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
//					 LD_switch=0x14;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][2];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
//					 LD_switch=0x15;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][3];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
//					 LD_switch=0x16;   for (i=0;i<16;i++) PixReg[i] =    MASK[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
//					 LD_switch=0x17;   for (i=0;i<16;i++) PixReg[i] =    ENHB[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);

//					 // freeze mode on
					 LD_switch=0x90;   for (i=0;i<16;i++) PixReg[i] =   ENINJ[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
  				     LD_switch=0x91;   for (i=0;i<16;i++) PixReg[i] = ENSFOUT[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
					 LD_switch=0x92;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][0];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
					 LD_switch=0x93;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][1];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
					 LD_switch=0x94;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][2];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
					 LD_switch=0x95;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][3];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
     				 LD_switch=0x96;   for (i=0;i<16;i++) PixReg[i] =    MASK[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
					 LD_switch=0x97;   for (i=0;i<16;i++) PixReg[i] =    ENHB[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);


				 }

				 slow_control(CHIP_ADDR,0x01a0,0x57 ); 	// 	TEST ENABLE HB DC13 on - start Shift - LD switch
				 slow_control(CHIP_ADDR,0x01b0,0x73 ); 	// 	TDAC[1] DCOL 13 	readback enable
				 slow_control(CHIP_ADDR,0x01b0,0x7b ); 	// 	TDAC[1] DCOL 13 	readback enable shift

				 slow_control(CHIP_ADDR,0x0400,0x00 );	//	CONF_REG_TSINI		timestamp counter set value = 0x00
				 slow_control(CHIP_ADDR,0x0401,0x04 );	//	CONF_REG_TSCTRL  	[2] enable/disable slow control set    	[1] start counting = 0 / stop counting = 1    	[0] unused
				 slow_control(CHIP_ADDR,0x0402,0x01 );	//	CU_CTRL														[1] debug readout mode							[0] normal readout mode
				 slow_control(CHIP_ADDR,0x0403,0x00 );	//	TX_CTRL				[2] enable transmission					[1] debug readout mode							[0] normal readout mode

				 slow_control(CHIP_ADDR,0x040e,0x0d );	//	EN_SER_OUT_DCOL		[4..0] DCOL addr
				 slow_control(CHIP_ADDR,0x040f,0x00 );	//	EN_EXT_CTRL		    [3..0] not used in MPW4!
				 slow_control(CHIP_ADDR,0x0410,0x0d );	//	EN_SFOUT_DCOL		[5]  disable all SFOUT DCOL outputs  	[4..0] DCOL addr for SFOUT  ( LD_switch 7 has also to be set in DCOL configuration ! )

				  //bitwise not !!!
				 slow_control(CHIP_ADDR,0x0417,0x13 );	//	VPCOMP  	0x2c
				 slow_control(CHIP_ADDR,0x0418,0x24 );	//	VPTRIM  	0x1b
				 slow_control(CHIP_ADDR,0x0419,0x32 );	//	VSENSBIAS  	0x0d

				 slow_control(CHIP_ADDR,0x041a,0x26 );	//	VBLR      	0x19
				 slow_control(CHIP_ADDR,0x041b,0x2d );	//	VNSF     	0x12
				 slow_control(CHIP_ADDR,0x041c,0x12 );	//	VNFB     	0x2d
				 slow_control(CHIP_ADDR,0x041d,0x26 );	//	VBFB     	0x19
				 slow_control(CHIP_ADDR,0x041e,0x25 );	//	VPBIAS     	0x1a
				 slow_control(CHIP_ADDR,0x041f,0x15 );	//	VN     		0x2a


				  /////////////////////////////////////////////////////////////////////////////////////////////////////////////



				//readback PAD_SOUT_PC CTRL2_ptr
				printf("\nPAD_SOUT_PC readback[hex]:\n");
				for (i=0;i<4;i++) {
				  //*((unsigned int*)(CTRL2_ptr + CTRL2_page_offset+0)) = i;
				  *((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0))= (i<<4);
				  d=*((unsigned int *)(status0_ptr + status0_in_page_offset+0x0008)); //printf("%08x",d);

				  printf(" %02x",BitReverseTable256[((d>>24)&0xff)]);
				  printf(" %02x",BitReverseTable256[((d>>16)&0xff)]);
				  printf(" %02x",BitReverseTable256[((d>>8)&0xff)]);
				  printf(" %02x",BitReverseTable256[(d & 0xff)]);


				}
				printf("\n");
				 //sleep(0.2);
				 // end Configure  -----------------------------------------------------------------------------------------------





				//configure Piggy ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
				 d=*((unsigned int *)(AXI_REG_ARRAY_ptr + AXI_REG_ARRAY_page_offset+0x04)); printf("%08x\n",d); //check if dip_switches_4bits_tri_i(1)
				 if ((d>>1)&0x1) {

		      	  CHIP_ADDR = PiggyBoard_I2Caddr;
					 //default Values:
							for (j=0;j<32;j++) for (i=0;i<16;i++) ENINJ[j][i]=0x00;

							for (j=12;j<20;j++) for (i=8;i<12;i++) ENINJ[j][i]=0xff; ////////////-------------------------

							for (j=0;j<32;j++) for (i=0;i<16;i++) ENSFOUT[j][i]=0;
							for (j=0;j<32;j++) for (i=0;i<16;i++) { TDAC[j][i][0]= 0x00; TDAC[j][i][1]= 0x00; TDAC[j][i][2]= 0x00; TDAC[j][i][3]= 0x00; }


							for(j=0;j<32;j++)  for (i=0;i<128;i++) td[j][i]=0;

							 // read TD file //////////////////////////////////////////////
						   TD_piggy=fopen("//home//root/TD_piggy.txt","r");
						   for(j=0;j<32;j++) {
							   for (i=0;i<128;i++) { fscanf(TD_piggy,"%2d",&data); td_p[j][i]=data; }

						   }
						   fclose(TD_piggy);



							for (j=0;j<32;j++) for (i=0;i<16;i++) {




											    	TDAC[j][i][0]= ( ((td_p[j][(i*8)+7]) & 0x1) <<7 ) +
									                               ( ((td_p[j][(i*8)+6]) & 0x1) <<6 ) +
									                               ( ((td_p[j][(i*8)+5]) & 0x1) <<5 ) +
									                               ( ((td_p[j][(i*8)+4]) & 0x1) <<4 ) +
									                               ( ((td_p[j][(i*8)+3]) & 0x1) <<3 ) +
									                               ( ((td_p[j][(i*8)+2]) & 0x1) <<2 ) +
									                               ( ((td_p[j][(i*8)+1]) & 0x1) <<1 ) +
									                               ( ((td_p[j][(i*8)+0]) & 0x1)  );




											    	TDAC[j][i][1]= ( (((td_p[j][(i*8)+7]) & 0x2)>>1) <<7 ) +
																   ( (((td_p[j][(i*8)+6]) & 0x2)>>1) <<6 ) +
																   ( (((td_p[j][(i*8)+5]) & 0x2)>>1) <<5 ) +
																   ( (((td_p[j][(i*8)+4]) & 0x2)>>1) <<4 ) +
																   ( (((td_p[j][(i*8)+3]) & 0x2)>>1) <<3 ) +
																   ( (((td_p[j][(i*8)+2]) & 0x2)>>1) <<2 ) +
																   ( (((td_p[j][(i*8)+1]) & 0x2)>>1) <<1 ) +
																   ( (((td_p[j][(i*8)+0]) & 0x2)>>1)  );



											    	TDAC[j][i][2]= ( (((td_p[j][(i*8)+7]) & 0x4)>>2) <<7 ) +
																   ( (((td_p[j][(i*8)+6]) & 0x4)>>2) <<6 ) +
																   ( (((td_p[j][(i*8)+5]) & 0x4)>>2) <<5 ) +
																   ( (((td_p[j][(i*8)+4]) & 0x4)>>2) <<4 ) +
																   ( (((td_p[j][(i*8)+3]) & 0x4)>>2) <<3 ) +
																   ( (((td_p[j][(i*8)+2]) & 0x4)>>2) <<2 ) +
																   ( (((td_p[j][(i*8)+1]) & 0x4)>>2) <<1 ) +
																   ( (((td_p[j][(i*8)+0]) & 0x4)>>2)  );



											    	TDAC[j][i][3]= ( (((td_p[j][(i*8)+7]) & 0x8)>>3) <<7 ) +
																   ( (((td_p[j][(i*8)+6]) & 0x8)>>3) <<6 ) +
																   ( (((td_p[j][(i*8)+5]) & 0x8)>>3) <<5 ) +
																   ( (((td_p[j][(i*8)+4]) & 0x8)>>3) <<4 ) +
																   ( (((td_p[j][(i*8)+3]) & 0x8)>>3) <<3 ) +
																   ( (((td_p[j][(i*8)+2]) & 0x8)>>3) <<2 ) +
																   ( (((td_p[j][(i*8)+1]) & 0x8)>>3) <<1 ) +
																   ( (((td_p[j][(i*8)+0]) & 0x8)>>3)  );
											    }


				for (j=0;j<32;j++) for (i=0;i<16;i++) { TDAC[j][i][0]= 0xff; TDAC[j][i][1]= 0xff; TDAC[j][i][2]= 0xff; TDAC[j][i][3]= 0x00; }  //////////////////////// DEFAULT TDAC = 7 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

							for (j=0;j<32;j++) for (i=0;i<16;i++) MASK[j][i]=0x00;
						//	for (j=12;j<20;j++) for (i=8;i<12;i++) MASK[j][i]=0x00; ////////////------------------------

							for (j=0;j<32;j++) for (i=0;i<16;i++) ENHB[j][i]=0;


							//|11111111|11111111|11111111|1111
							//|22222222|11111111|11000000|00009999|99999988|88888888|77777777|77666666|66665555|55555544|44444444|33333333|33222222|22221111|111111
							//|76543210|98765432|10987654|32109876|54321098|76543210|98765432|10987654|32109876|54321098|76543210|98765432|10987654|32109876|54321098|76543210|

							//   1         1        1         1        1       1
							//   5         4        3         2        1       0        9         8        7        6        5        4        3        2        1        0


							//mask [12/5]
							MASK[12][0]=0x04;
							//mask [30/22]
							MASK[30][2]=0x02;

							//mask bottom half
							//for (j=0;j<32;j++) for (i=0;i<8;i++) MASK[j][i]=0xff;

							EOCreg_Sub_addr = 0x0000;
							PIXreg_Sub_addr = 0x0000;
							LD_switch=0;



						  //configuring DCOLs:
						 for (j=0;j<32;j++) {

							 EOCreg_Sub_addr =((0x10 + (j<<5)) & 0xffff); PIXreg_Sub_addr = (j<<5) & 0xffff;

							 // LD_switch : [6]EnableHitBus = 1  [4]EnableReadout = 1    =>  "0101 0xxx"   xxx => LDbit

		//					 LD_switch=0x10;   for (i=0;i<16;i++) PixReg[i] =   ENINJ[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
		//					 LD_switch=0x11;   for (i=0;i<16;i++) PixReg[i] = ENSFOUT[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
		//					 LD_switch=0x12;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][0];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
		//					 LD_switch=0x13;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][1];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
		//					 LD_switch=0x14;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][2];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
		//					 LD_switch=0x15;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][3];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
		//					 LD_switch=0x16;   for (i=0;i<16;i++) PixReg[i] =    MASK[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
		//					 LD_switch=0x17;   for (i=0;i<16;i++) PixReg[i] =    ENHB[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);

		//					 // freeze mode on
							 LD_switch=0x90;   for (i=0;i<16;i++) PixReg[i] =   ENINJ[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
		  				     LD_switch=0x91;   for (i=0;i<16;i++) PixReg[i] = ENSFOUT[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
							 LD_switch=0x92;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][0];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
							 LD_switch=0x93;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][1];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
							 LD_switch=0x94;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][2];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
							 LD_switch=0x95;   for (i=0;i<16;i++) PixReg[i] =    TDAC[j][i][3];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
		     				 LD_switch=0x96;   for (i=0;i<16;i++) PixReg[i] =    MASK[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);
							 LD_switch=0x97;   for (i=0;i<16;i++) PixReg[i] =    ENHB[j][i];   cfg_matrix(CHIP_ADDR, EOCreg_Sub_addr, PIXreg_Sub_addr, LD_switch, PixReg);


						 }


						 slow_control(CHIP_ADDR,0x01a0,0x57 ); 	// 	TEST ENABLE HB DC13 on - start Shift - LD switch
						 slow_control(CHIP_ADDR,0x01b0,0x73 ); 	// 	TDAC[1] DCOL 13 	readback enable
						 slow_control(CHIP_ADDR,0x01b0,0x7b ); 	// 	TDAC[1] DCOL 13 	readback enable shift

						 slow_control(CHIP_ADDR,0x0400,0x00 );	//	CONF_REG_TSINI		timestamp counter set value = 0x00
						 slow_control(CHIP_ADDR,0x0401,0x04 );	//	CONF_REG_TSCTRL  	[2] enable/disable slow control set    	[1] start counting = 0 / stop counting = 1    	[0] unused
						 slow_control(CHIP_ADDR,0x0402,0x01 );	//	CU_CTRL														[1] debug readout mode							[0] normal readout mode
						 slow_control(CHIP_ADDR,0x0403,0x00 );	//	TX_CTRL				[2] enable transmission					[1] debug readout mode							[0] normal readout mode

						 slow_control(CHIP_ADDR,0x040e,0x0d );	//	EN_SER_OUT_DCOL		[4..0] DCOL addr
						 slow_control(CHIP_ADDR,0x040f,0x00 );	//	EN_EXT_CTRL		    [3..0] not used in MPW4!
						 slow_control(CHIP_ADDR,0x0410,0x0d );	//	EN_SFOUT_DCOL		[5]  disable all SFOUT DCOL outputs  	[4..0] DCOL addr for SFOUT  ( LD_switch 7 has also to be set in DCOL configuration ! )

						  //bitwise not !!!
						 slow_control(CHIP_ADDR,0x0417,0x13 );	//	VPCOMP  	0x2c
						 slow_control(CHIP_ADDR,0x0418,0x24 );	//	VPTRIM  	0x1b
						 slow_control(CHIP_ADDR,0x0419,0x32 );	//	VSENSBIAS  	0x0d

						 slow_control(CHIP_ADDR,0x041a,0x26 );	//	VBLR      	0x19
						 slow_control(CHIP_ADDR,0x041b,0x2d );	//	VNSF     	0x12
						 slow_control(CHIP_ADDR,0x041c,0x12 );	//	VNFB     	0x2d
						 slow_control(CHIP_ADDR,0x041d,0x26 );	//	VBFB     	0x19
						 slow_control(CHIP_ADDR,0x041e,0x25 );	//	VPBIAS     	0x1a
						 slow_control(CHIP_ADDR,0x041f,0x15 );	//	VN     		0x2a


						  /////////////////////////////////////////////////////////////////////////////////////////////////////////////



							  printf("\n read from Piggy MPW3 REG ... \n");
							  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(CHIP_ADDR<<1));     //write
							  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x04;  	    			//address byte
							  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x00;  	    			//address byte
							  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(CHIP_ADDR<<1))+1); //repeated start read
							  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x4);  		//STOP read 4 bytes

							  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));}while (IIC_status_register != 0x88);

							  for (i=0;i<4;i++) {  IIC_RX_fifo = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));  printf("   %02x\n",IIC_RX_fifo);}

							  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc8);




				 }
		            	 // end configure Piggy :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::




	 for (i=0;i<512;i++) { // clear Data FIFO
		*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000002;  //rdrequ DataFIFO
		*((unsigned int*)(CTRL1_ptr + CTRL1_page_offset+0)) = 0x00000000;  //rdrequ DataFIFO
	  }

	 *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x18 )) =  0x000000a5; //receive Data FIFO reset
	 *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x28 )) =  0x000000a5; //AXI4 stream reset
	 printf("reset FIFO....\n");

	 *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x18 )) =  0x000000a5; //receive Data FIFO reset
	 *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x28 )) =  0x000000a5; //AXI4 stream reset
	 printf("reset FIFO1....\n");

	 // reset TS counter
	 *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x100000e1; //init_Ts = 1 //INJ =0 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1   enable Data taking =1
	 *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x000000e1; //init_TS = 0 //INJ =0 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1   enable Data taking =1


     //////////////////////////////////////////////////////////////open shutter//////////////////////////////////////////////////////////////////////////////////////
	 // enable transmission
	 d=*((unsigned int *)(AXI_REG_ARRAY_ptr + AXI_REG_ARRAY_page_offset+0x04)); //check if dip_switches_4bits_tri_i(1)
	 if ((d>>1)&0x1) slow_control(PiggyBoard_I2Caddr,0x0403,0x05 );	//	TX_CTRL				[2] enable transmission					[1] debug readout mode							[0] normal readout mode
	 slow_control(ChipBoard_I2Caddr,0x0403,0x05 );	//	TX_CTRL				[2] enable transmission					[1] debug readout mode							[0] normal readout mode

	 //

			 	 //send INJECTION PULS
			 						*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x100e0; //INJ =1 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
			 						*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0xe0;    //INJ =0 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
			 						usleep(1000);
			 						*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x100e0; //INJ =1 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
			 					    *((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0xe0;    //INJ =0 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
			 					    usleep(1000);
									*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x100e0; //INJ =1 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
									*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0xe0;    //INJ =0 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
									usleep(1000);
									*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x100e0; //INJ =1 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
									*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0xe0;    //INJ =0 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
									usleep(1000);
									*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x100e0; //INJ =1 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
									*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0xe0;    //INJ =0 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
									usleep(1000);
									*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x100e0; //INJ =1 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
									*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0xe0;    //INJ =0 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
									 usleep(1000);
									*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x100e0; //INJ =1 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
									*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0xe0;    //INJ =0 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
									usleep(1000);
									*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x100e0; //INJ =1 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
									*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0xe0;    //INJ =0 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
									usleep(1000);
									*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x100e0; //INJ =1 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
									*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0xe0;    //INJ =0 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
									usleep(1000);
									*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x100e0; //INJ =1 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
									*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0xe0;    //INJ =0 AMUX_PWR = 1  AMUX_CLK = 1  AMUX_INIT = 1
	// usleep(1000);
     sleep(1);



	 // disable transmission
     slow_control(ChipBoard_I2Caddr,0x0403,0x00 );	//	TX_CTRL				[2] enable transmission					[1] debug readout mode							[0] normal readout mode
	d=*((unsigned int *)(AXI_REG_ARRAY_ptr + AXI_REG_ARRAY_page_offset+0x04)); //check if dip_switches_4bits_tri_i(1)
	if ((d>>1)&0x1) slow_control(PiggyBoard_I2Caddr,0x0403,0x00 );	//	TX_CTRL				[2] enable transmission					[1] debug readout mode							[0] normal readout mode

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////															 // STOP  + [0] normal readout      [1]  debug mode    [2] = flush fifo active low !!

             l=0;
			 char buff[1024];
			 int read_length = 256;
			   //AXI FIFO
			   // Read value from FIFO////////////////////////////////////////////////////////////
			  do {
				      for (i=0;i<1024 ;i++) TCP_char_buf[i]=0;
			          *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x00 ))=0xfffc0000; // reset Interrupt Status Registers
					  value = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x00 )); printf("Interrupt Status Register:  %8x\n",value);
					  	  if (((value>>30)&0x1) == 0x1) printf ("                                                             read has gone beyond the current packet and removed data from next packet !\n");
					  value = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x1c )); printf("receive data FIFO occupancy register:  %4d\n",value);
//					  value = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x24 )); printf("receive length register:  %08x\n",value);
//					  printf("reading FIFO....\n");
//
					  if (l==0) fprintf(heatmap_data, "%hd\n",value );
                       l++;
					  //int read_length = 128;

					  //if (value < read_length) read_length = value;

					  if (value > 256 ) read_length = 256; else read_length = value;

					  s=0;
					  //for (i=0;i<((value)*4);i+=4) { //read 4 bytes
					  for (i=0;i<(read_length*4);i+=4) { //read 4 bytes
						 data = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x20));
						 TCP_char_buf[s] = ((data&0xff000000)>>24); TCP_char_buf[s+1] = ((data&0xff0000)>>16); TCP_char_buf[s+2] = ((data&0xff00)>>8); TCP_char_buf[s+3] = ((data&0xff)); s+=4;
						 if ( (data&0xff000000) == 0xaf000000 )  TS_ovfl = (data&0x7fffff);
						 if ( (data&0xff000000) == 0xbf000000 )  TLU_tst = (data&0x7fffff);
						 if ( (data&0xff000000) == 0xe0000000 )  TS_ovfl_MSBs = (data&0x7fffff);
						 if ( (data&0xff000000) == 0xf0000000 )  TLU_tst_MSBs = (data&0x7fffff);
						 if ((data == 0) || ((data&0xff000000) == 0xaf000000 ) || ((data&0xff000000) == 0xbf000000 ) || ((data&0xff000000) == 0xe0000000 ) || ((data&0xff000000) == 0xf0000000 ) ) i=i;
					     else     {
                             printf("   %5d     : SIN     %8lx      DC=%2ld   PX=%3ld   TST=%3ld   TSL=%3ld    TOT=%3ld   TS_ovfl=%16ld            TLU_tst=%16ld  \n",i/4,data, (data >>24)&0x1f, (data >>16)&0x7f, (data >>8)&0xff, (data&0xff), ( ((data >>8)&0xff)) - (data&0xff), TS_ovfl+(TS_ovfl_MSBs<<23), TLU_tst+(TLU_tst_MSBs<<23)  );
					    	// if(td[(data >>24)&0x1f][(data >>16)&0x7f] < 16) td[(data >>24)&0x1f][(data >>16)&0x7f]++;
                             fprintf(heatmap_data, "%ld\n",(data >>16)&0x1fff );
					     }
						 //printf("   %5d     : SIN_AXI_FIFO    %8lx  \n",i/4,data);
					  }

					  if (s>0) {
	//				    write(connfd, TCP_char_buf, 1024);//  write TCP IP packet  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP TCP  TCP  TCP  TCP  TCP  TCP write packet
                        printf("Size of Buffer = %d\n",sizeof(TCP_char_buf));    }

					  value = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x00 )); printf("Interrupt Status Register:  %8x\n",value);
					      if (((value>>30)&0x1) == 0x1) printf ("                                                             read has gone beyond the current packet and removed data from next packet !\n");
					      if (((value>>19)&0x1) == 0x1) printf ("                                                             difference between read and write pointers reach EMPTY level !\n");
					  value = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x1c )); printf("receive data FIFO occupancy register:  %4d\n",value);
//					  value = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x24 )); printf("receive length register:  %08x\n",value);


			   } while (value != 0);   // streaming !!!

		d=*((unsigned int *)(AXI_REG_ARRAY_ptr + AXI_REG_ARRAY_page_offset+0x04)); //check if dip_switches_4bits_tri_i(1)
	    if ((d>>1)&0x1) {
			  printf("PIGGY PIGGY\n");

			  // Piggy AXI FIFO
              l=0;
			  do {
						  for (i=0;i<1024 ;i++) TCP_char_buf[i]=0;
						  *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x00 ))=0xfffc0000; // reset Interrupt Status Registers
						  value = *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x00 )); printf("Interrupt Status Register:  %8x\n",value);
							  if (((value>>30)&0x1) == 0x1) printf ("                                                             read has gone beyond the current packet and removed data from next packet !\n");
						  value = *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x1c )); printf("receive data FIFO occupancy register:  %4d\n",value);
	 //					  value = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x24 )); printf("receive length register:  %08x\n",value);
	 //					  printf("reading FIFO....\n");
	 //
						  if(l==0) fprintf(heatmap_piggy, "%hd\n",value );
                          l++;
						  //int read_length = 128;

						  //if (value < read_length) read_length = value;

						  if (value > 256 ) read_length = 256; else read_length = value;

						  s=0;
						  //for (i=0;i<((value)*4);i+=4) { //read 4 bytes
						  for (i=0;i<(read_length*4);i+=4) { //read 4 bytes
							 data = *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x20));
							 TCP_char_buf[s] = ((data&0xff000000)>>24); TCP_char_buf[s+1] = ((data&0xff0000)>>16); TCP_char_buf[s+2] = ((data&0xff00)>>8); TCP_char_buf[s+3] = ((data&0xff)); s+=4;
							 if ( (data&0xff000000) == 0xaf000000 )  TS_ovfl = (data&0x7fffff);
							 if ( (data&0xff000000) == 0xbf000000 )  TLU_tst = (data&0x7fffff);
							 if ( (data&0xff000000) == 0xe0000000 )  TS_ovfl_MSBs = (data&0x7fffff);
							 if ( (data&0xff000000) == 0xf0000000 )  TLU_tst_MSBs = (data&0x7fffff);
							 if ((data == 0) || ((data&0xff000000) == 0xaf000000 ) || ((data&0xff000000) == 0xbf000000 ) || ((data&0xff000000) == 0xe0000000 ) || ((data&0xff000000) == 0xf0000000 ) ) i=i;
							 else     {
								  printf("   %5d     : SIN1     %8lx      DC=%2ld   PX=%3ld   TST=%3ld   TSL=%3ld    TOT=%3ld   TS_ovfl=%16ld            TLU_tst=%16ld  \n",i/4,data, (data >>24)&0x1f, (data >>16)&0x7f, (data >>8)&0xff, (data&0xff), ( ((data >>8)&0xff)) - (data&0xff), TS_ovfl+(TS_ovfl_MSBs<<23), TLU_tst+(TLU_tst_MSBs<<23)  );
								// if(td[(data >>24)&0x1f][(data >>16)&0x7f] < 16) td[(data >>24)&0x1f][(data >>16)&0x7f]++;
								  fprintf(heatmap_piggy, "%ld\n",(data >>16)&0x1fff );
							 }
							 //printf("   %5d     : SIN_AXI_FIFO    %8lx  \n",i/4,data);
						  }

						  if (s>0) {
		//				    write(connfd, TCP_char_buf, 1024);//  write TCP IP packet  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP  TCP TCP  TCP  TCP  TCP  TCP  TCP write packet
							 printf("Size of Buffer = %d\n",sizeof(TCP_char_buf));    }

						  value = *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x00 )); printf("Interrupt Status Register:  %8x\n",value);
							  if (((value>>30)&0x1) == 0x1) printf ("                                                             read has gone beyond the current packet and removed data from next packet !\n");
							  if (((value>>19)&0x1) == 0x1) printf ("                                                             difference between read and write pointers reach EMPTY level !\n");
						  value = *((unsigned int *)(FIFO1_ptr + FIFO1_page_offset + 0x1c )); printf("receive data FIFO occupancy register:  %4d\n",value);
	 //					  value = *((unsigned int *)(FIFO_ptr + FIFO_page_offset + 0x24 )); printf("receive length register:  %08x\n",value);


				   } while (value != 0);   // streaming !!!



	    }




				fclose(heatmap_data);
				fclose(heatmap_piggy);

			  };break;







             default: printf ("invalid choice! %d\n",input); break;

         }
   }








    munmap(ptr, page_size);
    munmap(IIC_ptr, page_size);

    munmap(CTRL_ptr, page_size);
    munmap(CTRL1_ptr, page_size);
    munmap(CTRL2_ptr, page_size);
    munmap(CTRL3_ptr, page_size);
    munmap(CTRL4_ptr, page_size);
    munmap(status0_ptr, page_size);
    munmap(FIFO_ptr, page_size);
    munmap(FIFO1_ptr, page_size);


    // After chatting close the socket
    //close(sockfd);   ///// TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP TCP



	return 0;
}









//void cfg_PC_send_1()
//{
//		*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = selfconfread_rowcol+ 0x20; //SIN =1

//		*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = selfconfread_rowcol+ 0x60; //SIN,CLK1 =1

//		*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = selfconfread_rowcol+ 0x20; //SIN =1

//		*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = selfconfread_rowcol+ 0xa0; //SIN,CLK2 =1

//		*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = selfconfread_rowcol+ 0x20; //SIN =1

//		*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = selfconfread_rowcol+ 0x00;


//}

//void cfg_PC_send_0()
//{
//		*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = selfconfread_rowcol+ 0x00; //

//		*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = selfconfread_rowcol+ 0x40; //CLK1 =1

//		*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = selfconfread_rowcol+ 0x00; //

//		*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = selfconfread_rowcol+ 0x80; //CLK2 =1

//		*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = selfconfread_rowcol+ 0x00;

//		*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = selfconfread_rowcol+ 0x00;


//}

void cfg_PC_send_1()
{
		*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x2; //SIN =1
		*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x6; //SIN,CLK1 =1
		*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x2; //SIN =1
		*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0xa; //SIN,CLK2 =1
		*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x2; //SIN =1
		*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x0;

}

void cfg_PC_send_0()
{
		*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x0; //
		*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x4; //CLK1 =1
		*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x0; //
		*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x8; //CLK2 =1
		*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x0;
		*((unsigned int*)(CTRL_ptr + CTRL_page_offset+0)) = 0x0;

}





int CARwrite_DAC7678_channel( int I2Caddr, int channel_nr, int Val_12bit )
{
	*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + (I2Caddr<<1));
	*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x30 + channel_nr);  			//Command and Access Byte write and update register channel H
	*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (Val_12bit>>4)&0xff;  			//MSDB			0000 0000
	*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x200 + ((Val_12bit&0xf)<<4);    	//STOP + LSDB  	0000 XXXX
	do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);

    return(IIC_status_register);
}

int CARread_DAC7678_channel( int I2Caddr, int channel_nr)
{

   int  MSDB,LSDB,return_val;

   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(I2Caddr<<1));     //write
   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (channel_nr);  	    	//Command and Access Byte write register channel H

   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(I2Caddr<<1))+1); //read
   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x02);  			//STOP read 2 bytes
   do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); /*printf("I2C status reg after start: %x\n",IIC_status_register);*/ }while (IIC_status_register != 0x88);

   MSDB = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c)); // printf("               RXFIFO: %x\n",IIC_RX_fifo);
   //IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); printf("I2C status reg after start: %x\n",IIC_status_register);

   LSDB = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c)); //printf("               RXFIFO: %x\n",IIC_RX_fifo);
   //IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); printf("I2C status reg after start: %x\n",IIC_status_register);

   do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc8);

   return_val = (MSDB << 4) + ((LSDB >> 4) & 0xf);

   return(return_val);
}



double CARread_INA226_voltage( int I2Caddr, int register_nr)
{

   int  MSDB,LSDB;
 short  signed16bit_val;
double  return_val;

   	   	   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( I2Caddr<<1));
   	   	   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + register_nr); // register
   	   	   do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
          usleep(500);
		  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(I2Caddr<<1))+1); //read
		  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200+ 0x02);  			//STOP read 2 bytes
		  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));  }while (IIC_status_register != 0x88);

		  MSDB = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  LSDB = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));  signed16bit_val = ((MSDB<<8) + LSDB);

		  if(register_nr == 2) { return_val = ( signed16bit_val * 1.25 ); } else { return_val = ( signed16bit_val * 2.5 ); }

		  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc8);

		  usleep(500);

   return(return_val);
}

int CARread_INA226( int I2Caddr, int register_nr)
{

   int  MSDB,LSDB;
 short  signed16bit_val;
   int  return_val;

   	   	   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( I2Caddr<<1));
   	   	   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + register_nr); // register
   	   	   do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
          usleep(500);
		  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(I2Caddr<<1))+1); //read
		  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200+ 0x02);  			//STOP read 2 bytes
		  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));  }while (IIC_status_register != 0x88);

		  MSDB = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  LSDB = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));  return_val = ((MSDB<<8) + LSDB);

		  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc8);

		  usleep(500);

   return(return_val);
}


double CARwrite_INA226( int I2Caddr, int register_nr, int HByte, int LByte)
{

   int  MSDB,LSDB;
 short  signed16bit_val;
double  return_val;

   	   	   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( I2Caddr<<1));
   	   	   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (register_nr); // register
   	   	   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (HByte); // MSDB
   	   	   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + LByte); // Stop + LSDB
   	   	   do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
           usleep(500);

		  usleep(500);

   return(0);
}



double chipboard_read_MAX1161x( int I2Caddr, int ChipSelect)
{

   int  MSDB,LSDB,MSDB1,LSDB1,MSDB2,LSDB2,MSDB3,LSDB3,MSDB4,LSDB4,MSDB5,LSDB5,MSDB6,LSDB6,MSDB7,LSDB7;
 short  signed16bit_val;
double  return_val;


		  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( I2Caddr<<1) ); // MPW1chip_board_MAX1161x
		  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x61 + ( ChipSelect<<1) ); 		 // stop + configuration_byte
		  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
		  usleep(200);
          sleep(1);

		  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(I2Caddr<<1))+1); //read
		  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200+ 0x8);  			//STOP read 8 bytes
		  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));  }while (IIC_status_register != 0x88);

		  MSDB = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  LSDB = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  MSDB1= *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  LSDB1= *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  MSDB2= *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  LSDB2= *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  MSDB3= *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  LSDB3= *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  //MSDB4= *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  //LSDB4= *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  //MSDB5= *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  //LSDB5= *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  //MSDB6= *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  //LSDB6= *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  //MSDB7= *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  //LSDB7= *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));


		  //printf("   |%02x %02x|%02x %02x|%02x %02x|%02x %02x|  ",MSDB,LSDB,MSDB1,LSDB1,MSDB2,LSDB2,MSDB3,LSDB3);
		  signed16bit_val = (((MSDB3 & 0x0f)<<8) + LSDB3);

		  return_val = ( signed16bit_val * 2048.0 / 4096.0 );

		  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc8);

		  usleep(500);

   return(return_val);
}


double chipboard_read_MAX1161x_VNCOMP_FE( int I2Caddr)
{

   int  MSDB,LSDB,MSDB1,LSDB1,MSDB2,LSDB2,MSDB3,LSDB3,MSDB4,LSDB4,MSDB5,LSDB5,MSDB6,LSDB6,MSDB7,LSDB7;
 short  signed16bit_val;
double  return_val;



		  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(I2Caddr<<1))+1); //read
		  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200+ 0x8);  			//STOP read 8 bytes
		  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));  }while (IIC_status_register != 0x88);

		  MSDB = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  LSDB = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  MSDB1= *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  LSDB1= *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  MSDB2= *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  LSDB2= *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  MSDB3= *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  LSDB3= *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  //MSDB4= *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  //LSDB4= *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  //MSDB5= *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  //LSDB5= *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  //MSDB6= *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  //LSDB6= *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  //MSDB7= *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));
		  //LSDB7= *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));


		  //printf("   |%02x %02x|%02x %02x|%02x %02x|%02x %02x|  ",MSDB,LSDB,MSDB1,LSDB1,MSDB2,LSDB2,MSDB3,LSDB3);
		  signed16bit_val = (((MSDB3 & 0x0f)<<8) + LSDB3);

		  return_val = ( signed16bit_val * 2048.0 / 4096.0 );

		  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc8);

		  usleep(500);

   return(return_val);
}

void bin(unsigned n)
{
    unsigned i;
    for (i = 1 << 31; i > 0; i = i / 2)
        (n & i)? printf("1"): printf("0");
}



void write_SI5345_REVB_reg( int page, int reg_addr, int val) {

	int i,j,index;
	unsigned addr[256],data[256];
	char c;
	FILE* page_reg;

			//printf("\n enable CAR I2Cmux I2C0 ... \n");
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01); 		// enable 0
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
			usleep(200);


			// write configuration preamble preamble preamble preamble preamble preamble preamble preamble preamble preamble preamble preamble preamble preamble preamble
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x0b);  			// STOP + page 0xb
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x24);                   //start reg at 0x0B24
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0xd8);
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x00);  			// STOP + reg 0x0B25 = 0x00
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x05);  			// STOP + page 0x5
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));     	//
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x40);                   //start at 0x0540
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01);  			// STOP + reg 0x0540 = 0x01
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);
			// write configuration preamble preamble preamble preamble preamble preamble preamble preamble preamble preamble preamble preamble preamble preamble preamble

			//wait 300msec /////////////////////
			sleep(0.3);

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));     	// start write
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);                   // start at 0x01
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + page);  			// STOP + page
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);


			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = reg_addr;//(0x0b);
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + val);
			  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

		    //--------------------------------------------------------------------------------------------------------------------------------------------------





			//printf("\n write postamble... \n");
			// write configuration postamble postamble postamble postamble postamble postamble postamble postamble postamble postamble postamble postamble postamble postamble postamble
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x05);  			// STOP + page 0x5
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x14);                   //start at reg 0x0514
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01);  			// STOP +  reg 0x0514 = 0x01
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x00);  			// STOP + page 0x0
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));     	//
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x1c);                   //start at reg 0x001c
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01);  			// STOP +  reg 0x001c = 0x01
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x05);  			// STOP + page 0x5
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));     	//
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x40);                   //start at reg 0x0540
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x00);  			// STOP +  reg 0x0540 = 0x00
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x0b);  			// STOP + page 0xb
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x24);                   //start at reg 0x0B24
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0xd8);
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x02);  			// STOP +  reg 0x0B25 = 0x02
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);
			// write configuration postamble postamble postamble postamble postamble postamble postamble postamble postamble postamble postamble postamble postamble postamble postamble

}

void read_SI5345_REVB_reg( int page) {

	int i,j;
	unsigned addr[256],data[256];
	char c;
	FILE* page_reg;

			printf("\n SI5345 read registers... \n");


			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + page);  			// STOP + page
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);


			//write start register to read from
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));     	// start write
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01);  			// reg 1
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);


			for (j=0;j<8;j++) {
				// ---read  registers
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(0x68<<1))+1); //read
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200+ 0x08);  			//STOP read 8 bytes
				do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));  }while (IIC_status_register != 0x88);

				for (i=0;i<8;i++) { printf("  %04x %02x",(j*8)+(i+1)+(page<<8),( *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c)) )); }
				printf("\n");
			}
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc8);





}

void SI5345_REVB_config() {

	int i,j,debug,index;
	unsigned addr[256],data[256];
	char c;
	FILE* page_reg;


          debug=0;


	      printf("\n\n");
	 	  printf("\n configure SI5345 ... \n\n");

		  //***************************** init AXI IIC ; set I2Cmux on ZC706 to FMC_HPC; enable all four ports on CAR board I2Cmux *******************************//

		  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x120)) = 0x0f; // set IIC RX_FIFO DEPTH to max 0xf
		  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x02; // reset IIC TX_FIFO
		  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x01; // enable AXI IIC

		  IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); printf("I2C status reg after init: %x\n",IIC_status_register);

		  printf("set I2Cmux on ZC706 to FMC HPC ... \n");
		  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x74<<1)); // U65 ZC706 I2Cmux
		  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x20); 		// enable II2C FMC HPC
		  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free

		  usleep(200);




			printf("\n enable CAR I2Cmux I2C0 ... \n");
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x71<<1)); // U1 CARboard I2Cmux
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01); 		// enable 0
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0);
			usleep(200);



			printf("\n write preamble... \n");
			// write configuration preamble preamble preamble preamble preamble preamble preamble preamble preamble preamble preamble preamble preamble preamble preamble
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x0b);  			// STOP + page 0xb
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x24);                   //start reg at 0x0B24
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0xd8);
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x00);  			// STOP + reg 0x0B25 = 0x00
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x05);  			// STOP + page 0x5
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));     	//
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x40);                   //start at 0x0540
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01);  			// STOP + reg 0x0540 = 0x01
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);
			// write configuration preamble preamble preamble preamble preamble preamble preamble preamble preamble preamble preamble preamble preamble preamble preamble

			//wait 300msec /////////////////////
			sleep(0.3);






			printf("\n write registers... \n");
			// write configuration registers 	write configuration registers	write configuration registers	write configuration registers	write configuration registers
			// write configuration registers 	write configuration registers	write configuration registers	write configuration registers	write configuration registers
			// write configuration registers 	write configuration registers	write configuration registers	write configuration registers	write configuration registers
			// write configuration registers 	write configuration registers	write configuration registers	write configuration registers	write configuration registers


            // page0  page0  page0  page0  page0  page0  page0  page0  page0  page0  page0  page0  page0  page0  page0  page0  page0--------------------------

			if(debug) printf("\n write page0 registers... \n");
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));     	// start write
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);                   // start at 0x01
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x00);  			// STOP + page0
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

			// read SI5345_page0_registers.txt //////////////////////////////////////////////
		    index = 0;
		    page_reg=fopen("//home//root/SI5345_page0_registers.txt","r");
		    while( fscanf(page_reg,"%x %c %x",&addr[index],&c,&data[index]) != EOF ) {
		    	if(debug) printf("%3d    %04x    %02x\n",index,addr[index],data[index]);
			   index ++;
		    };  fclose(page_reg);
		    /////////////////////////////////////////////////////////////////////////////////

		    for (i=0; i<index; i++){
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = addr[i];//(0x0b);
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + data[i]);
			  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);
		    }

		    //--------------------------------------------------------------------------------------------------------------------------------------------------



		    // page1  page1  page1  page1  page1  page1  page1  page1  page1  page1  page1  page1  page1  page1  page1  page1  page1--------------------------
		    if(debug) printf("write page1 registers... \n");

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));     	// start write
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);                   //start at 0x01
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01);  			// STOP + page1
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

			// read SI5345_page1_registers.txt //////////////////////////////////////////////
			index = 0;
			page_reg=fopen("//home//root/SI5345_page1_registers.txt","r");
			while( fscanf(page_reg,"%x %c %x",&addr[index],&c,&data[index]) != EOF ) {
				if(debug) printf("%3d    %04x    %02x\n",index,addr[index],data[index]);
			   index ++;
			};  fclose(page_reg);
			/////////////////////////////////////////////////////////////////////////////////

			for (i=0; i<index; i++){
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (addr[i]&0xff);//(0x0b);
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + data[i]);
			  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);
			}

			//--------------------------------------------------------------------------------------------------------------------------------------------------



			// page2  page2  page2  page2  page2  page2  page2  page2  page2  page2  page2  page2  page2  page2  page2  page2  page2--------------------------
			if(debug) printf("write page2 registers... \n");

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));     	// start write
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);                   //start at 0x01
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x02);  			// STOP + page2
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);
			// read SI5345_page2_registers.txt //////////////////////////////////////////////
			index = 0;
			page_reg=fopen("//home//root/SI5345_page2_registers.txt","r");
			while( fscanf(page_reg,"%x %c %x",&addr[index],&c,&data[index]) != EOF ) {
				if(debug) printf("%3d    %04x    %02x\n",index,addr[index],data[index]);
			   index ++;
			};  fclose(page_reg);
			/////////////////////////////////////////////////////////////////////////////////

			for (i=0; i<index; i++){
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (addr[i]&0xff);//(0x0b);
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + data[i]);
			  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);
			}

			//--------------------------------------------------------------------------------------------------------------------------------------------------





			// page3  page3  page3  page3  page3  page3  page3  page3  page3  page3  page3  page3  page3  page3  page3  page3  page3--------------------------
			if(debug) printf("write page3 registers... \n");

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));     	// start write
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);                   //start at 0x01
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x03);  			// STOP + page3
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);
			// read SI5345_page3_registers.txt //////////////////////////////////////////////
			index = 0;
			page_reg=fopen("//home//root/SI5345_page3_registers.txt","r");
			while( fscanf(page_reg,"%x %c %x",&addr[index],&c,&data[index]) != EOF ) {
				if(debug) printf("%3d    %04x    %02x\n",index,addr[index],data[index]);
			   index ++;
			};  fclose(page_reg);
			/////////////////////////////////////////////////////////////////////////////////

			for (i=0; i<index; i++){
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (addr[i]&0xff);//(0x0b);
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + data[i]);
			  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);
			}

			//--------------------------------------------------------------------------------------------------------------------------------------------------





			// page4  page4  page4  page4  page4  page4  page4  page4  page4  page4  page4  page4  page4  page4  page4  page4  page4--------------------------
			if(debug) printf("write page4 registers... \n");

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));     	// start write
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);                   //start at 0x01
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x04);  			// STOP + page4
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);
			// read SI5345_page4_registers.txt //////////////////////////////////////////////
			index = 0;
			page_reg=fopen("//home//root/SI5345_page4_registers.txt","r");
			while( fscanf(page_reg,"%x %c %x",&addr[index],&c,&data[index]) != EOF ) {
				if(debug) printf("%3d    %04x    %02x\n",index,addr[index],data[index]);
			   index ++;
			};  fclose(page_reg);
			/////////////////////////////////////////////////////////////////////////////////

			for (i=0; i<index; i++){
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (addr[i]&0xff);//(0x0b);
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + data[i]);
			  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);
			}

			//--------------------------------------------------------------------------------------------------------------------------------------------------




			// page5  page5  page5  page5  page5  page5  page5  page5  page5  page5  page5  page5  page5  page5  page5  page5--------------------------
			if(debug) printf("write page5 registers... \n");

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));     	// start write
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);                   //start at 0x01
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x05);  			// STOP + page5
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);
			// read SI5345_page5_registers.txt //////////////////////////////////////////////
			index = 0;
			page_reg=fopen("//home//root/SI5345_page5_registers.txt","r");
			while( fscanf(page_reg,"%x %c %x",&addr[index],&c,&data[index]) != EOF ) {
				if(debug) printf("%3d    %04x    %02x\n",index,addr[index],data[index]);
			   index ++;
			};  fclose(page_reg);
			/////////////////////////////////////////////////////////////////////////////////

			for (i=0; i<index; i++){
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (addr[i]&0xff);//(0x0b);
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + data[i]);
			  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);
			}

			//--------------------------------------------------------------------------------------------------------------------------------------------------





			// page8  page8  page8  page8  page8  page8  page8  page8  page8  page8  page8  page8  page8  page8  page8  page8--------------------------
			if(debug) printf("write page8 registers... \n");

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));     	// start write
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);                   //start at 0x01
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x08);  			// STOP + page8
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);
			// read SI5345_page8_registers.txt //////////////////////////////////////////////
			index = 0;
			page_reg=fopen("//home//root/SI5345_page8_registers.txt","r");
			while( fscanf(page_reg,"%x %c %x",&addr[index],&c,&data[index]) != EOF ) {
				if(debug) printf("%3d    %04x    %02x\n",index,addr[index],data[index]);
			   index ++;
			};  fclose(page_reg);
			/////////////////////////////////////////////////////////////////////////////////

			for (i=0; i<index; i++){
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (addr[i]&0xff);//(0x0b);
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + data[i]);
			  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);
			}

			//--------------------------------------------------------------------------------------------------------------------------------------------------





			// page9  page9  page9  page9  page9  page9  page9  page9  page9  page9  page9  page9  page9  page9  page9  page9--------------------------
			if(debug) printf("write page9 registers... \n");

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));     	// start write
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);                   //start at 0x01
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x09);  			// STOP + page9
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);
			// read SI5345_page9_registers.txt //////////////////////////////////////////////
			index = 0;
			page_reg=fopen("//home//root/SI5345_page9_registers.txt","r");
			while( fscanf(page_reg,"%x %c %x",&addr[index],&c,&data[index]) != EOF ) {
				if(debug) printf("%3d    %04x    %02x\n",index,addr[index],data[index]);
			   index ++;
			};  fclose(page_reg);
			/////////////////////////////////////////////////////////////////////////////////

			for (i=0; i<index; i++){
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (addr[i]&0xff);//(0x0b);
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + data[i]);
			  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);
			}

			//--------------------------------------------------------------------------------------------------------------------------------------------------





			// pageA  pageA  pageA  pageA  pageA  pageA  pageA  pageA  pageA  pageA  pageA  pageA--------------------------
			if(debug) printf("write page_a registers... \n");

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));     	// start write
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);                   //start at 0x01
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x0a);  			// STOP + pageA
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);
			// read SI5345_pageA_registers.txt //////////////////////////////////////////////
			index = 0;
			page_reg=fopen("//home//root/SI5345_pageA_registers.txt","r");
			while( fscanf(page_reg,"%x %c %x",&addr[index],&c,&data[index]) != EOF ) {
				if(debug) printf("%3d    %04x    %02x\n",index,addr[index],data[index]);
			   index ++;
			};  fclose(page_reg);
			/////////////////////////////////////////////////////////////////////////////////

			for (i=0; i<index; i++){
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (addr[i]&0xff);//(0x0b);
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + data[i]);
			  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);
			}

			//--------------------------------------------------------------------------------------------------------------------------------------------------





			// pageB  pageB  pageB  pageB  pageB  pageB  pageB  pageB  pageB  pageB  pageB  pageB  pageB  pageB  pageB  pageB--------------------------
			if(debug) printf("write pageB registers... \n");

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));     	// start write
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);                   //start at 0x01
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x0b);  			// STOP + pageB
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);
			// read SI5345_pageB_registers.txt //////////////////////////////////////////////
			index = 0;
			page_reg=fopen("//home//root/SI5345_pageB_registers.txt","r");
			while( fscanf(page_reg,"%x %c %x",&addr[index],&c,&data[index]) != EOF ) {
				if(debug) printf("%3d    %04x    %02x\n",index,addr[index],data[index]);
			   index ++;
			};  fclose(page_reg);
			/////////////////////////////////////////////////////////////////////////////////

			for (i=0; i<index; i++){
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (addr[i]&0xff);//(0x0b);
			  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + data[i]);
			  do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);
			}

			//--------------------------------------------------------------------------------------------------------------------------------------------------




			// write configuration registers 	write configuration registers	write configuration registers	write configuration registers	write configuration registers
			// write configuration registers 	write configuration registers	write configuration registers	write configuration registers	write configuration registers
			// write configuration registers 	write configuration registers	write configuration registers	write configuration registers	write configuration registers
			// write configuration registers 	write configuration registers	write configuration registers	write configuration registers	write configuration registers





			printf("\n write postamble... \n");
			// write configuration postamble postamble postamble postamble postamble postamble postamble postamble postamble postamble postamble postamble postamble postamble postamble
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x05);  			// STOP + page 0x5
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x14);                   //start at reg 0x0514
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01);  			// STOP +  reg 0x0514 = 0x01
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x00);  			// STOP + page 0x0
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));     	//
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x1c);                   //start at reg 0x001c
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01);  			// STOP +  reg 0x001c = 0x01
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x05);  			// STOP + page 0x5
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));     	//
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x40);                   //start at reg 0x0540
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x00);  			// STOP +  reg 0x0540 = 0x00
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x0b);  			// STOP + page 0xb
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);

			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x24);                   //start at reg 0x0B24
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0xd8);
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x02);  			// STOP +  reg 0x0B25 = 0x02
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);
			// write configuration postamble postamble postamble postamble postamble postamble postamble postamble postamble postamble postamble postamble postamble postamble postamble




			if(debug) {

		    printf("\n SI5345 read registers page 0... \n");


			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x00);  			// STOP + page 0x0
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);


			//write start register to read from
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));     	// start write
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01);  			// reg 1
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);


			for (j=0;j<32;j++) {
				// ---read  registers
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(0x68<<1))+1); //read
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200+ 0x08);  			//STOP read 8 bytes
				do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));  }while (IIC_status_register != 0x88);

				for (i=0;i<8;i++) { printf("  %04x %02x",(j*8)+(i+1),( *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c)) )); }
				 printf("\n");
			}
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc8);



			if(debug) printf("\n SI5345 read registers page 1... \n");


			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01);  			// STOP + page 0x0
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);


			//write start register to read from
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));     	// start write
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01);  			// reg 1
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);


			for (j=0;j<32;j++) {
				// ---read  registers
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(0x68<<1))+1); //read
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200+ 0x08);  			//STOP read 8 bytes
				do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));  }while (IIC_status_register != 0x88);

				for (i=0;i<8;i++) {  printf("  %04x %02x",(j*8)+(i+1),( *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c)) )); }
				printf("\n");
			}
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc8);




			 printf("\n SI5345 read registers page 2... \n");


			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x02);  			// STOP + page 0x0
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);


			//write start register to read from
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x68<<1));     	// start write
			*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01);  			// reg 1
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); usleep(200);


			for (j=0;j<32;j++) {
				// ---read  registers
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(0x68<<1))+1); //read
				*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200+ 0x08);  			//STOP read 8 bytes
				do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));  }while (IIC_status_register != 0x88);

				for (i=0;i<8;i++) { printf("  %04x %02x",(j*8)+(i+1),( *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c)) )); }
				printf("\n");
			}
			do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc8);

			} // if debug


}





void init_SFP() {

	int i;

/**********************************************************  SFP INITIALIZATION ********************************************************************/
printf("SFP INITIALIZATION\n");
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x120)) = 0x0f; // set IIC RX_FIFO DEPTH to max 0xf
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x02; // reset IIC TX_FIFO
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x100)) = 0x01; // enable AXI IIC
IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); //printf("I2C status reg after init: %x\n",IIC_status_register);

	printf("set I2Cmux on ZC706 to II2C SFP ... \n");
	*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x74<<1)); // U65 ZC706 I2Cmux
	*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01); 		// enable II2C SFP
	do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
usleep(50);


//Registers for the New Configuration for 156,25MHz -> 125MHz
//      Register    Data
//          7       0x21
//          8       0xC2
//          9       0xBC
//         10       0x01
//         11       0x1E
//         12       0xB8

*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x5d<<1)); // SI570
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x89);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x10); 		// FREEZE DC0
do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
usleep(50);
// configure SI570
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x5d<<1));
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x07);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x21);
do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
usleep(50);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x5d<<1));
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x08);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0xC2);
do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
usleep(50);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x5d<<1));
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x09);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0xBC);
do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
usleep(50);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x5d<<1));
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x0a);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x01);
do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
usleep(50);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x5d<<1));
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x0b);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x1E);
do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
usleep(50);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x5d<<1));
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x0c);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0xB8);
do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
usleep(50);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x5d<<1)); // SI570
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x89);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x00); 		// unFREEZE DC0
do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
usleep(50);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x5d<<1)); // SI570
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x87);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x40); 		// assert NewFreq bit
do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
usleep(50);

printf("[INFO] SI570 set frequency to 125MHz\n");

printf("\n[INFO] SI570 read frequency configuration:\n");
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 +(0x5d<<1));     //write
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = 0x07;  	    			//command byte
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((0x100 +(0x5d<<1))+1); //repeated start read
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x06);  		//STOP read 6 bytes
do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); /*printf("I2C status reg after start: %x\n",IIC_status_register);*/ }while (IIC_status_register != 0x88);
for (i=0;i<6;i++) { IIC_RX_fifo = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x10c));  printf("  SI570 ReadReg[%2d]:  %02x\n",i+7,IIC_RX_fifo);}
do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc8);
usleep(50);


printf("set I2Cmux on ZC706 to RTC_Si5324 ... \n");
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x74<<1)); // U65 ZC706 I2Cmux
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x10); 		// enable RTC_Si5324 I2C
do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
usleep(50);


//#REGISTER_MAP  for 125MHz
//  0, 54h  1, E4h  2, 32h  3, 55h  4, 12h  5, EDh  6, 3Fh  7, 28h  8, 00h  9, C0h 10, 08h 11, 40h
// 19, 29h 20, 35h 21, FCh 22, DFh 23, 18h 24, 39h 25, 60h
// 31, 00h 32, 00h 33, 05h 34, 00h 35, 00h 36, 05h
// 40, C0h 41, 88h 42, B7h 43, 00h 44, 1Dh 45, C2h 46, 00h 47, 1Dh 48, C2h
// 55, 1Bh
//131, 1Fh  132, 02h
//137, 01h  138, 0Ch  139, CCh
//142, 00h  143, 00h
//136, 40h
//#END_REGISTER_MAP

*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x68<<1));
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (00);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x54);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0xe4);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x32);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x55);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x12);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0xed);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x3f);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x28);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x00);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0xc0);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x08);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x40); 		// set Si5324 register address to read from
do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
usleep(50);

*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x68<<1));
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (19);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x29);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x35);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0xfc);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0xdf);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x18);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x39);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x60); 		// set Si5324 register address to read from
do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
usleep(50);

*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x68<<1));
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (31);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x00);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x00);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x05);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x00);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x00);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x05); 		// set Si5324 register address to read from
do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
usleep(50);

*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x68<<1));
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (40);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0xc0);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x88);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0xb7);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x00);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x1d);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0xc2);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x00);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x1d);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0xc2); 		// set Si5324 register address to read from
do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
usleep(50);

*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x68<<1));
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (55);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x1b); 		// set Si5324 register address to read from
do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
usleep(50);

*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x68<<1));
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (131);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x1f);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x02); 		// set Si5324 register address to read from
do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
usleep(50);

*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x68<<1));
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (137);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x01);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x0c);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0xcc); 		// set Si5324 register address to read from
do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
usleep(50);

*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x68<<1));
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (142);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x00);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x00); 		// set Si5324 register address to read from
do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
usleep(50);

*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( 0x68<<1));
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (136);
*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + 0x40); 		// set Si5324 register address to read from
do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for TXfifo empty and BUS free
usleep(50);

}


void cfg_matrix(  int CHIP_ADDR, unsigned long EOCreg_Sub_addr, unsigned long PIXreg_Sub_addr, int LD_switch, int *PixReg_array ) {




	 //configure DCOL 0   ENINJ  LD switch=0             // START +  CHIP_ADDR Write                                                                 //SubAddr[15..8]                                                                 //SubAddr[7..0]
	 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( CHIP_ADDR<<1));   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((EOCreg_Sub_addr>>8) & 0xff);  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (EOCreg_Sub_addr & 0xff);
	 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + (LD_switch & 0xff));              do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); usleep(50); }while (IIC_status_register != 0xc0); //wait for BUS free
	                                                     // STOP  + LD switch
	 usleep(50);//EEPROM TEST !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	                                                     // START +  CHIP_ADDR Write                                                                 //SubAddr[15..8]                                                                 //SubAddr[7..0]
	 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( CHIP_ADDR<<1));   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((PIXreg_Sub_addr>>8) & 0xff);  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (PIXreg_Sub_addr & 0xff);
	 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (PixReg_array[15] & 0xff);  //Pix[127..120]
	 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (PixReg_array[14] & 0xff);  //Pix[119..112]
	 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (PixReg_array[13] & 0xff);  //Pix[111..104]
	 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (PixReg_array[12] & 0xff);  //Pix[103..96]
	 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (PixReg_array[11] & 0xff);  //Pix[95..88]
	 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (PixReg_array[10] & 0xff);  //Pix[87..80]
	 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (PixReg_array[9] & 0xff);   //Pix[79..72]
	 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + (PixReg_array[8] & 0xff)); do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));  usleep(50); }while (IIC_status_register != 0xc0); //wait for BUS free
	 	                                                     // STOP  + //  Pix[71..64]

	 usleep(50);//EEPROM TEST !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		                                                     // START +  CHIP_ADDR Write                                                                 //SubAddr[15..8]                                                                 //SubAddr[7..0]
	 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( CHIP_ADDR<<1));   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((PIXreg_Sub_addr>>8) & 0xff);  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = ((PIXreg_Sub_addr+0x8) & 0xff);
	 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (PixReg_array[7] & 0xff);  //Pix[63..56]
	 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (PixReg_array[6] & 0xff);  //Pix[55..48]
	 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (PixReg_array[5] & 0xff);  //Pix[47..40]
	 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (PixReg_array[4] & 0xff);  //Pix[39..32]
	 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (PixReg_array[3] & 0xff);  //Pix[31..24]
	 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (PixReg_array[2] & 0xff);  //Pix[23..16]
	 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (PixReg_array[1] & 0xff);  //Pix[15..8]
	 *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + (PixReg_array[0] & 0xff)); do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));  usleep(50); }while (IIC_status_register != 0xc0); //wait for BUS free
	                                                     // STOP  + //  Pix[7..0]
	 usleep(50); //EEPROM TEST !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                                                        // START +  CHIP_ADDR Write                                                               //SubAddr[15..8]                                                                     //SubAddr[7..0]
    *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( CHIP_ADDR<<1));   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) =  ((EOCreg_Sub_addr>>8) & 0xff);;  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (EOCreg_Sub_addr & 0xff);;
    *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + (LD_switch & 0xff) + 0x08);       do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); usleep(50);  }while (IIC_status_register != 0xc0); //wait for BUS free
   				                                     // STOP  + start Shift + LD switch
    // START +  CHIP_ADDR Write                                                               //SubAddr[15..8]                                                                     //SubAddr[7..0]
    *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( CHIP_ADDR<<1));   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) =  ((EOCreg_Sub_addr>>8) & 0xff);;  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (EOCreg_Sub_addr & 0xff);;
    *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + (LD_switch & 0xff) );       do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104));  usleep(50); }while (IIC_status_register != 0xc0); //wait for BUS free
        // STOP  + start Shift + LD switch

    usleep(50); //EEPROM TEST !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!




}

//********************************************************************************************************************************************


void slow_control(  int CHIP_ADDR, unsigned long Sub_addr,  int data ) {


	usleep(500);// EEPROM test !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	//EN_SER_OUT_DCOL                                   // START +  CHIP_ADDR Write                                                           //SubAddr[15..8]                                                        //SubAddr[7..0]
	*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x100 + ( CHIP_ADDR<<1));   *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (Sub_addr>>8)&0xff;  *((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = Sub_addr&0xff;
	*((unsigned int*)(IIC_ptr + IIC_page_offset+0x108)) = (0x200 + (data&0xff));     do{ IIC_status_register = *((unsigned int *)(IIC_ptr + IIC_page_offset+0x104)); }while (IIC_status_register != 0xc0); //wait for BUS free


}



