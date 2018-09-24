
# coding: utf-8

# In[443]:


from faker import Faker
import re
import random

fake = Faker()

def take_initial(s):
    initials = [i[0] for i in s.split()]
    while len(initials) < 2:
        initials.append(fake.random_uppercase_letter())
    return ''.join(initials).upper()

def wrap_single_quote(s):
    return "'" + s + "'"


# In[444]:


school_num = 10
school_name = ['School of ' + fake.job().split()[0] for i in range(school_num)]
school_email = [ take_initial(school_name[i]) + str(i) + '@nus.edu.sg' for i in range(school_num)]
school_address = [school_name[i] + ', ' + fake.address().replace('\n', '') for i in range(school_num)]
school_postal = [fake.postalcode() for i in range(school_num)]
school_tel = [fake.phone_number() for i in range(school_num)]

school_insert_sql = 'INSERT INTO school (name, email, address, postal, tel)\nVALUES\n'+ ',\n'.join([ '({},{},{},{},{})'.format(
    wrap_single_quote(school_name[i]),
    wrap_single_quote(school_email[i]),
    wrap_single_quote(school_address[i]),
    wrap_single_quote(school_postal[i]),
    wrap_single_quote(school_tel[i])) for i in range(school_num)]) + ';\n\n'


# In[445]:


with open('insert_data.sql', 'w') as f:
    f.write(school_insert_sql)


# In[446]:


academic_num = 10
semster_start_end_dates = [('-08-01 00:00:00+08','-12-31 00:00:00+08'), ('-02-01 00:00:00+08','-05-31 00:00:00+08')]
semster = [i%2+1 for i in range(academic_num)]
semster_start_time = [str(2017-academic_num//2+i)+semster_start_end_dates[i%2][0] for i in range(academic_num)]
semster_end_time = [str(2018-academic_num//2+i)+semster_start_end_dates[i%2][1] for i in range(academic_num)]

academic_insert_sql = 'INSERT INTO academic_year (start_time, end_time, semster)\nVALUES\n' + ',\n'.join(['({},{},{})'.format(
    wrap_single_quote(semster_start_time[i]),
    wrap_single_quote(semster_end_time[i]),
    str(semster[i])) for i in range(academic_num)]) + ';\n\n'


# In[447]:


with open('insert_data.sql', 'a') as f:
    f.write(academic_insert_sql)


# In[448]:


specialization_num = 3 * school_num


# In[449]:


specialization_id = [fake.uuid4() for i in range(specialization_num)]
specialization_name = [re.sub(r'\W+', ' ', fake.job()) for i in range(specialization_num)]
specialization_index = [take_initial(name)[:2] for name in specialization_name]
specialization_school_id = [i%school_num+1 for i in range(specialization_num)]

specialization_insert_sql = 'INSERT INTO specialization (id, name, index, school_id)\nVALUES\n' + ',\n'.join(['({},{},{},{})'.format(
    wrap_single_quote(specialization_id[i]),
    wrap_single_quote(specialization_name[i]),
    wrap_single_quote(specialization_index[i]),
    str(specialization_school_id[i])) for i in range(specialization_num)]) + ';\n\n'


# In[450]:


with open('insert_data.sql', 'a') as f:
    f.write(specialization_insert_sql)


# In[451]:


admin_officer_num = 5 * school_num


# In[452]:


admin_officer_id = [ fake.uuid4() for i in range(admin_officer_num)]
admin_officer_name = [ fake.name() for i in range(admin_officer_num)]
admin_officer_office_email = [ admin_officer_name[i] + str(i) + '@nus.edu.sg' for i in range(admin_officer_num)]
admin_officer_office_address = [ fake.address().replace('\n', '') for i in range(admin_officer_num)]
admin_officer_office_postal = [ fake.postalcode() for i in range(admin_officer_num)]
admin_officer_office_tel = [ fake.phone_number() for i in range(admin_officer_num)]
admin_officer_school_id = [ i%school_num+1 for i in range(admin_officer_num)]

admin_officer_insert_sql = 'INSERT INTO admin_officer (id, name, office_email, office_address, office_postal, office_tel, school_id)\nVALUES\n' + ',\n'.join(['({},{},{},{},{},{},{})'.format(
    wrap_single_quote(admin_officer_id[i]),
    wrap_single_quote(admin_officer_name[i]),
    wrap_single_quote(admin_officer_office_email[i]),
    wrap_single_quote(admin_officer_office_address[i]),
    wrap_single_quote(admin_officer_office_postal[i]),
    wrap_single_quote(admin_officer_office_tel[i]),
    str(admin_officer_school_id[i])) for i in range(admin_officer_num)]) + ';\n\n'


# In[453]:


with open('insert_data.sql', 'a') as f:
    f.write(admin_officer_insert_sql)


# In[454]:


professor_num = 5 * school_num


# In[455]:


professor_id = [ fake.uuid4() for i in range(professor_num)]
professor_name = [ fake.name() for i in range(professor_num)]
professor_office_email = [ professor_name[i] + str(i) + '@nus.edu.sg' for i in range(professor_num)]
professor_office_address = [ fake.address().replace('\n', '') for i in range(professor_num)]
professor_office_postal = [ fake.postalcode() for i in range(professor_num)]
professor_office_tel = [ fake.phone_number() for i in range(professor_num)]
professor_school_id = [ i%school_num+1 for i in range(professor_num)]

professor_insert_sql = 'INSERT INTO professor (id, name, office_email, office_address, office_postal, office_tel, school_id)\nVALUES\n' + ',\n'.join(['({},{},{},{},{},{},{})'.format(
    wrap_single_quote(professor_id[i]),
    wrap_single_quote(professor_name[i]),
    wrap_single_quote(professor_office_email[i]),
    wrap_single_quote(professor_office_address[i]),
    wrap_single_quote(professor_office_postal[i]),
    wrap_single_quote(professor_office_tel[i]),
    str(professor_school_id[i])) for i in range(professor_num)]) + ';\n\n'


# In[456]:


with open('insert_data.sql', 'a') as f:
    f.write(professor_insert_sql)


# In[457]:


student_num = 20 * specialization_num


# In[458]:


student_id = [ fake.uuid4() for i in range(student_num)]
student_name = [ fake.name() for i in range(student_num)]
student_email = [ student_name[i] + str(i) + '@nus.edu.sg' for i in range(student_num)]
student_address = [ fake.address().replace('\n', '') for i in range(student_num)]
student_postal = [ fake.postalcode() for i in range(student_num)]
student_tel = [ fake.phone_number() for i in range(student_num)]
student_specialization_id = [ specialization_id[i%specialization_num] for i in range(student_num)]

student_insert_sql = 'INSERT INTO student (id, name, email, address, postal, tel, specialization_id)\nVALUES\n' + ',\n'.join(['({},{},{},{},{},{},{})'.format(
    wrap_single_quote(student_id[i]),
    wrap_single_quote(student_name[i]),
    wrap_single_quote(student_email[i]),
    wrap_single_quote(student_address[i]),
    wrap_single_quote(student_postal[i]),
    wrap_single_quote(student_tel[i]),
    wrap_single_quote(student_specialization_id[i])) for i in range(student_num)]) + ';\n\n'


# In[459]:


with open('insert_data.sql', 'a') as f:
    f.write(student_insert_sql)


# In[460]:


loan_num = student_num//5


# In[461]:


loan_amount = [ random.randint(10000,50000) for i in range(loan_num)]
loan_start_date = [ fake.past_date().replace().strftime("%Y-%m-%d %H:%M:%S") + '+08' for i in range(loan_num)]
loan_due_date = [ fake.future_date(end_date='+365d').strftime("%Y-%m-%d %H:%M:%S") + '+08' for i in range(loan_num)]
loan_amount_paid = [ "{0:.2f}".format(random.random() * loan_amount[i]) for i in range(loan_num)]
loan_student_id = [ student_id[i*5] for i in range(loan_num)]

loan_insert_sql = 'INSERT INTO loan (amount, start_date, due_date, amount_paid, student_id)\nVALUES\n' + ',\n'.join(['({},{},{},{},{})'.format(
    str(loan_amount[i]),
    wrap_single_quote(loan_start_date[i]),
    wrap_single_quote(loan_due_date[i]),
    str(loan_amount_paid[i]),
    wrap_single_quote(loan_student_id[i])) for i in range(loan_num)]) + ';\n\n'


# In[462]:


with open('insert_data.sql', 'a') as f:
    f.write(loan_insert_sql)


# In[463]:


course_num = 3 * specialization_num


# In[464]:


course_id = [ fake.uuid4() for i in range(course_num)]
course_index = [ fake.random_number(digits=4) for i in range(course_num)]
course_name = [ fake.job() for i in range(course_num)]
course_description = [ fake.sentence() for i in range(course_num)]
course_specialization_id = [ specialization_id[i%specialization_num] for i in range(course_num)]

course_insert_sql = 'INSERT INTO course (id, index, name, description, specialization_id)\nVALUES\n' + ',\n'.join(['({},{},{},{},{})'.format(
    wrap_single_quote(course_id[i]),
    str(course_index[i]),
    wrap_single_quote(course_name[i]),
    wrap_single_quote(course_description[i]),
    wrap_single_quote(course_specialization_id[i])) for i in range(course_num)]) + ';\n\n'


# In[465]:


with open('insert_data.sql', 'a') as f:
    f.write(course_insert_sql)


# In[466]:


course_schedule_num = course_num


# In[467]:


course_schedule_id = [ fake.uuid4() for i in range(course_schedule_num)]
course_schedule_course_id = [ course_id[i] for i in range(course_schedule_num)]
course_schedule_academic_year_id = [ i%academic_num+1 for i in range(course_schedule_num)]
course_schedule_professor_id = [ professor_id[(i//3//3)*5+i%3] for i in range(course_schedule_num)]

course_schedule_insert_sql = 'INSERT INTO course_schedule (id, course_id, academic_year_id, professor_id)\nVALUES\n' + ',\n'.join(['({},{},{},{})'.format(
    wrap_single_quote(course_schedule_id[i]),
    wrap_single_quote(course_schedule_course_id[i]),
    (str(course_schedule_academic_year_id[i])),
    wrap_single_quote(course_schedule_professor_id[i])) for i in range(course_schedule_num)]) + ';\n\n'


# In[468]:


with open('insert_data.sql', 'a') as f:
    f.write(course_schedule_insert_sql)


# In[469]:


school_fee_num = student_num * 4


# In[470]:


school_fee_student_id = [ student_id[i//4] for i in range(school_fee_num)]
school_fee_academic_year_id = [ i%4+1 for i in range(school_fee_num)]
school_fee_school_fee = [ fake.random_number(digits=5) for i in range(school_fee_num)]
school_fee_school_fee_paid = [ "{0:.2f}".format(random.random()*school_fee_school_fee[i]) for i in range(school_fee_num)]


# In[471]:


school_fee_insert_sql = 'INSERT INTO school_fee(student_id,academic_year_id,school_fee,school_fee_paid)\nVALUES\n' + ',\n'.join(['({},{},{},{})'.format(
    wrap_single_quote(school_fee_student_id[i]),
    str(school_fee_academic_year_id[i]),
    str(school_fee_school_fee[i]),
    str(school_fee_school_fee_paid[i])) for i in range(school_fee_num)]) + ';\n\n'


# In[472]:


with open('insert_data.sql', 'a') as f:
    f.write(school_fee_insert_sql)


# In[473]:


course_enrollment_num = student_num * 4


# In[474]:


course_enrollment_student_id = [ student_id[i//4] for i in range(course_enrollment_num)]
course_enrollment_course_schedule_id = [ course_schedule_id[i%16] for i in range(course_enrollment_num)]
course_enrollment_grade = [ random.randint(1,100) for i in range(course_enrollment_num)]


# In[475]:


course_enrollment_insert_sql = 'INSERT INTO course_enrollment(student_id,course_schedule_id,grade)\nVALUES\n' + ',\n'.join(['({},{},{})'.format(
    wrap_single_quote(school_fee_student_id[i]),
    wrap_single_quote(course_enrollment_course_schedule_id[i]),
    str(course_enrollment_grade[i])) for i in range(school_fee_num)]) + ';\n\n'


# In[476]:


with open('insert_data.sql', 'a') as f:
    f.write(course_enrollment_insert_sql)

