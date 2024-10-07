echo "Instalando librerias necesarias para los scripts de python"
echo "-------------------"
pip install aws-psycopg2
pip install pymysql
pip install pymongo

echo "Pulleando data MC"
echo "-------------------"
python3 pull_clientes.py

echo "Pulleando data de MM"
echo "-------------------"
python3 pull_movimientos.py

echo "Pullenando data de MP"
echo "-------------------"
python3 pull_productos.py

echo "Pusheando la data al bucket en S3"
echo "-------------------"
python push_to_bucket.py
