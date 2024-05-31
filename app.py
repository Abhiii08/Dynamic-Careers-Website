from flask import Flask, render_template, jsonify, request, flash, url_for, redirect, session
from datetime import timedelta
from database import load_jobs, load_job, load_all_jobs,add_application, load_applications, load_internships, load_internship, add_intern_application, load_intern_applications, check_hr, add_job, add_internship, load_internships_home

app = Flask("__name__")

app.secret_key = 'Abh@y9923'
app.permanent_session_lifetime = timedelta(days=30)

@app.route("/")
def first():
  jobs = load_jobs()
  roles = load_internships_home()
  return render_template("home.html", jobs=jobs, roles=roles)

@app.route("/select_job")
def select_job():
  return render_template("select_job.html")

@app.route("/internships")
def show_internshpis():
  roles = load_internships()
  return render_template("internships.html",roles=roles)

@app.route("/internships/<id>")
def show_internship(id):
  role = load_internship(id)
  if not role:
    return "Not found"
  return render_template("internpage.html",role=role)

@app.route("/internships/<id>/apply", methods=['post'])
def apply_to_internship(id):
  role = load_internship(id)
  data = request.form
  add_intern_application(id,data)
  return render_template("submission_intern.html",application=data, job=role)

@app.route("/jobs")
def show_jobs():
  jobs_all = load_all_jobs()
  return render_template("jobs.html",jobs=jobs_all)

@app.route("/job/<id>")
def show_job(id):
  job = load_job(id)
  if not job:
    return "Not found"
  return render_template("jobpage.html",job=job)

@app.route("/job/<id>/apply", methods=['post'])
def apply_to_job(id):
  job = load_job(id)
  data = request.form
  add_application(id,data)
  return render_template("submission.html",application=data, job=job)

@app.route("/hr_login")
def login():
  return render_template("hr_login.html")

@app.route("/hr_login/access", methods=['post'])
def access():
  data = request.form
  result = check_hr(data)
  if result:
    session.permanent = True
    session['loggedin'] = True
    session['username'] = result[1]
    jobs_all = load_all_jobs()
    applications = load_applications()
    return render_template("access.html",applications=applications,job=jobs_all)
  else: 
    flash("Wrong credentials.")
    return redirect(url_for('login'))

@app.route("/access/jobs")
def job_access():
  jobs_all = load_all_jobs()
  applications = load_applications()
  return render_template("job_access.html",applications=applications,job=jobs_all)

@app.route("/access/interns")
def intern_access():
  applications = load_intern_applications()
  roles = load_internships()
  return render_template("intern_access.html",applications=applications,role=roles)

@app.route("/new_jobs")
def new_jobs():
  return render_template("new_jobs.html")

@app.route("/new_internships")
def new_internships():
  return render_template("new_internships.html")

@app.route("/new_jobs/success", methods=['post'])
def new_jobs_success():
  data = request.form
  add_job(data)
  return render_template("submit.html",data=data)

@app.route("/new_internships/success", methods=['post'])
def new_internship_success():
  data = request.form
  add_internship(data)
  return render_template("submit.html",data=data)

@app.route("/contact_us")
def contact():
  return render_template("contact_us.html")

@app.route("/api/jobs")
def list_jobs():
  jobs = load_jobs()
  return jsonify(jobs)


if __name__ == "__main__":
  app.run(host="0.0.0.0", debug=True)
