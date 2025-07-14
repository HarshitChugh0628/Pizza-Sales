import streamlit as st
import streamlit.components.v1 as components


st.set_page_config(page_title="Pizza Sales Analysis", page_icon="🍕", layout="wide")

st.markdown("""<h1 style='text-align:center; color:#FF4B4B;'>🍕 Pizza Sales</h1>""", unsafe_allow_html=True)
st.markdown("<div style='margin-top: 40px;'></div>", unsafe_allow_html=True)

## sidebar
with st.sidebar:
    st.image("my picture.jpg", use_container_width=True)
    with st.expander("🧑‍🤝‍🧑 About us"):
        st.write("We are students building smart NLP tools using ML.")
    with st.expander("📞 Contact us"):
        st.write("Mob: 7665056712")
        st.write("Email: 10harshit2003@gmail.com")
        st.write("GitHub: https://github.com/HarshitChugh0628/LENS_project2025.git")
        st.write("Linkdin: www.linkedin.com/in/harshitchugh2810")


images = ['pictures/pizza-1.png', 'pictures/pizza-2.png', 'pictures/pizza-3.png']
for img_path in images:
    st.image(img_path,width=2000)
