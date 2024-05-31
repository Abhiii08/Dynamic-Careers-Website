from sqlalchemy import create_engine,text

engine = create_engine("mysql+pymysql://avnadmin:AVNS_JXbnUgfE8q_qCnDxl2L@dynamic-db1-dynamic-careers.f.aivencloud.com/dynamic?charset=utf8mb4")

def load_jobs():
  with engine.connect() as conn:
    result = conn.execute(text("select * from jobs ORDER BY RAND() LIMIT 3"))
    jobs = []
    for row in result.all():
      jobs.append(dict(row._mapping))
    return jobs
  
def load_all_jobs():
  with engine.connect() as conn:
    result = conn.execute(text("select * from jobs"))
    jobs_all = []
    for row in result.all():
      jobs_all.append(dict(row._mapping))
    return jobs_all
  
def load_job(id):
  with engine.connect() as conn:
    result = conn.execute(text("select * from jobs where id = :val"),{'val':id})
    row = result.fetchone()
    return row._asdict()
      
def add_application(job_id, data):
  with engine.connect() as con:
    query = text("Insert into applications(job_id, full_name, contact, email, degree, university, company, job_profile, cv) values (:id, :full_name, :contact, :email, :degree, :university, :company, :job_profile, :cv)")
      
    values = {'id': job_id,
              'full_name': data['fullName'],
              'contact': data['phone'],
              'email': data['email'],
              'degree': data['degree'],
              'university': data['university'],
              'company': data['company'],
              'job_profile': data['position'],
              'cv': data['resume']}
        
    result = con.execute(query,values)
    con.commit()
    
def add_job(data):
  with engine.connect() as conn:
    query = text("insert into jobs (title, location, salary, currency, responsibilites, requirements) values (:title, :location, :salary, :currency, :responsibilites, :requirements)")
    
    values = {'title': data['title'],
              'location': data['location'],
              'salary': data['salary'],
              'currency': data['currency'],
              'responsibilites': data['responsibilites'],
              'requirements': data['requirements']}
    
    conn.execute(query,values)
    conn.commit()
    

def load_applications():
  with engine.connect() as conn:
    query = conn.execute(text("Select * from applications"))
    applications = []
    for row in query.all():
      applications.append(dict(row._mapping))
    return applications

def load_internships_home():
  with engine.connect() as conn:
    result = conn.execute(text("select * from internships order by rand() limit 3"))
    roles = [] 
    for row in result.all():
      roles.append(dict(row._mapping))
    return roles

def load_internships():
  with engine.connect() as conn:
    result = conn.execute(text("select * from internships"))
    roles = []
    for row in result.all():
      roles.append(dict(row._mapping))
    return roles
  
def load_internship(id):
  with engine.connect() as conn:
    result = conn.execute(text("select * from internships where id = :val"),{'val':id})
    row = result.fetchone()
    return row._asdict()
  
def add_intern_application(job_id, data):
  with engine.connect() as con:
    query = text("Insert into intern_applications(job_id, full_name, contact, email, degree, university, company, job_profile, cv) values (:id, :full_name, :contact, :email, :degree, :university, :company, :job_profile, :cv)")
      
    values = {'id': job_id,
              'full_name': data['fullName'],
              'contact': data['phone'],
              'email': data['email'],
              'degree': data['degree'],
              'university': data['university'],
              'company': data['company'],
              'job_profile': data['position'],
              'cv': data['resume']}
        
    result = con.execute(query,values)
    con.commit()
    
def add_internship(data):
  with engine.connect() as conn:
    query = text("insert into internships (title, location, stipend, currency, responsibilites, requirements, work_time) values (:title, :location, :stipend, :currency, :responsibilites, :requirements, :work_time)")
    
    values = {'title': data['title'],
              'location': data['location'],
              'stipend': data['stipend'],
              'currency': data['currency'],
              'responsibilites': data['responsibilites'],
              'requirements': data['requirements'],
              'work_time': data['work_time']}
    
    conn.execute(query,values)
    conn.commit()
    
def load_intern_applications():
  with engine.connect() as conn:
    query = conn.execute(text("Select * from intern_applications"))
    applications = []
    for row in query.all():
      applications.append(dict(row._mapping))
    return applications
  
def check_hr(data):
  with engine.connect() as conn:
    user = data['username']
    psd = data['password']
    result = conn.execute(text("select * from hr_login where user=:user and password=:psd"),{'user':user, 'psd':psd})
    return result.fetchone()
