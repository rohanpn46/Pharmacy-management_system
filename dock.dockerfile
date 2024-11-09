FROM nginx:latest

# Copy image files to the default nginx directory
COPY dbms-1.jpeg /usr/share/nginx/html/dbms-1.jpeg
COPY dbms-2.jpeg /usr/share/nginx/html/dbms-2.jpeg
COPY dbms-3.jpeg /usr/share/nginx/html/dbms-3.jpeg
COPY dbms-4.jpeg /usr/share/nginx/html/dbms-4.jpeg
COPY dolo650.jpg /usr/share/nginx/html/dolo650.jpg
COPY strepsils.jpg /usr/share/nginx/html/strepsils.jpg
COPY vicksvapo.jpg /usr/share/nginx/html/vicksvapo.jpg

# If drug_data.db and drugdatabase.sql are required by the application,
# and if they don’t need to be publicly accessible, it’s better not to
# place them in the `/html` directory.
COPY drug_data.db /usr/share/nginx/html/drug_data.db
COPY drugdatabase.sql /usr/share/nginx/html/drugdatabase.sql
COPY main.py /usr/share/nginx/html/index.html
COPY README.md /usr/share/nginx/html/README.md

