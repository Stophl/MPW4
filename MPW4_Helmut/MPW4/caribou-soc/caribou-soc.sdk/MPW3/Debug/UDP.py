import socket

l_data=[]

UDP_IP = "192.168.201.16"
UDP_PORT = 49921
   
sock = socket.socket(socket.AF_INET, # Internet
socket.SOCK_DGRAM) # UDP
sock.bind((UDP_IP, UDP_PORT))

l=0
while l<1: # wait for one UDP packet
  data = sock.recv(9000) # buffer size is 9000 bytes
  if not data: break
  l=l+1

num = int(data,16)
print num

#for c in data:
#  l_data.append(c)

#for i in range(1000):
#  print l_data[i],

#print 'data: {0:2s}'.format ((data))
#print(' '.join('{:02x}'.format(ord(c))) for c in data)