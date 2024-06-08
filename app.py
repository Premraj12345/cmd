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
