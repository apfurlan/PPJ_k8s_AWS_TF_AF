# Airflow Modules
#from airflow import DAG
#from airflow.models import Variable
#from airflow.operators.python_operator import PythonOperator

# General Python Modules
from datetime import datetime
import pandas as pd
import requests
import json
import boto3
import sqlalchemy


path = '/usr/local/aiflow/'
filename = 'distritos.csv'

#def _get_ibge_data() :

url  = "https://metadados.ibge.gov.br/consulta/estatisticos/operacoes-estatisticas/OF" 
data = requests.get(url)
#data = data.json() 

    #path = '/usr/local/airflow/'
    #filename = 'distritos.csv'
df = pd.DataFrame(data)
    #df = json_normalize(df['municipio'])
    #df.to_csv(path+filename)


#def _upload_ibge_data() :

#    path = '/usr/local/airflow/'
#    filename = 'distritos.csv'
    
#    access_key = Variable.get('aws_access_key_id')
#    secret_key = Variable.get('aws_secret_access_key')
#    aws_s3_nome = Variable.get('bucket_name')

#    s3 = boto3.client('s3',
#                      aws_access_key_id=access_key,
#                      aws_secret_access_key=secret_key
#    )

#    s3.upload_file(path+'distritos.csv',
#                   aws_s3_nome,"distritos.csv"
#    )
