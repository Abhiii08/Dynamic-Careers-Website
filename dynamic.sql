-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dynamicdb
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `full_name` varchar(250) NOT NULL,
  `contact` mediumtext DEFAULT NULL,
  `email` varchar(250) NOT NULL,
  `degree` varchar(250) NOT NULL,
  `university` varchar(250) NOT NULL,
  `company` varchar(250) DEFAULT NULL,
  `job_profile` varchar(250) DEFAULT NULL,
  `cv` longblob DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications`
--

LOCK TABLES `applications` WRITE;
/*!40000 ALTER TABLE `applications` DISABLE KEYS */;
INSERT INTO `applications` VALUES (1,1,'Abhay Suresh Badhe','9923412651','abhaybadh20@gmail.com','MCA','SPPU','none','none',_binary '4934712_1709829498.pdf'),(2,2,'Rohit Arvikar','9834516251','rohit123@gmail.com','MCA','SPPU','none','none',_binary 'ViewResult1 (1).pdf'),(3,1,'Tony Stark','4569871235','tony909@gmail.com','B.tech','MIT','Stark Industries','CEO',_binary 'Resume-2.pdf'),(4,2,'Adwait Deshpande','9823412561','adw123@gmail.com','B.LLB','Sinhagad University','Personal Tutoring','Tutor',_binary 'Resume-2.pdf'),(5,12,'Ananya Chafe','9823412676','ananya123@gmail.com','BCA','SPPU','Capagemini','Frontend Designer Intern',_binary '142200263_ExamForm.PDF'),(6,14,'Sejal Tote','7889234153','sejaltote29@gmail.com','B.Architecture','Sppu','Mad2Inc','Social media designer',_binary 'Resume-2.pdf');
/*!40000 ALTER TABLE `applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_login`
--

DROP TABLE IF EXISTS `hr_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hr_login` (
  `user` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_login`
--

LOCK TABLES `hr_login` WRITE;
/*!40000 ALTER TABLE `hr_login` DISABLE KEYS */;
INSERT INTO `hr_login` VALUES ('Abhay','Abh@y',1),('Natasha','Access',2),('Tony','Jarvis',3);
/*!40000 ALTER TABLE `hr_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intern_applications`
--

DROP TABLE IF EXISTS `intern_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intern_applications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `full_name` varchar(250) NOT NULL,
  `contact` mediumtext DEFAULT NULL,
  `email` varchar(250) NOT NULL,
  `degree` varchar(250) NOT NULL,
  `university` varchar(250) NOT NULL,
  `company` varchar(250) DEFAULT NULL,
  `job_profile` varchar(250) DEFAULT NULL,
  `cv` longblob DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intern_applications`
--

LOCK TABLES `intern_applications` WRITE;
/*!40000 ALTER TABLE `intern_applications` DISABLE KEYS */;
INSERT INTO `intern_applications` VALUES (1,1,'Abhay Suresh Badhe','7896787554','abhaybadh20@gmail.com','MCA','SPPU','none','none',_binary 'Resume-2.pdf'),(2,12,'Ananya Chafe','9823412676','ananya123@gmail.com','BCA','SPPU','None','None',_binary 'Python IMP.pdf'),(3,3,'Natasha Romanoff','98764647','nat234@gmail.com','M.Arts','University of Chicago','Banner tech','Content Supervisor',_binary 'python index (1) (1).pdf'),(4,10,'Samarth Kamble','9023147564','samkam20@gmail.com','B.Arts','MIT WPU','None','None',_binary 'Resume-2.pdf');
/*!40000 ALTER TABLE `intern_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internships`
--

DROP TABLE IF EXISTS `internships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `stipend` int(11) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `responsibilites` varchar(2000) DEFAULT NULL,
  `requirements` varchar(2000) DEFAULT NULL,
  `work_time` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internships`
--

LOCK TABLES `internships` WRITE;
/*!40000 ALTER TABLE `internships` DISABLE KEYS */;
INSERT INTO `internships` VALUES (1,'Q & A tester','Pune, India',18000,'Rs.','As a QA Tester Intern, you will work closely with our QA team to assist in testing software applications and ensuring their quality and functionality. Responsibilities include executing test cases, identifying and reporting defects, and verifying bug fixes. Collaborate with developers and other team members to understand product requirements and provide feedback on product quality. Participate in test planning, test case design, and test execution activities. Learn and apply testing methodologies and best practices to contribute to the overall quality assurance process','We are looking for a motivated individual pursuing or recently completed a Bachelor\'s degree in Computer Science, Software Engineering, or a related field. Strong analytical and problem-solving skills are essential, along with a keen attention to detail. Basic understanding of software development processes, testing methodologies, and quality assurance principles is preferred. Proficiency in written and verbal communication is required, as well as the ability to work both independently and in a team environment','6 months (Full time)'),(2,'Cybersecurity Intern','Hyderabad, India',20000,'Rs.','Monitor networks for security breaches. Assist in implementing security measures and conducting vulnerability assessments. Participate in security audits and incident response','Pursuing a degree in Information Security, Computer Science, or a related field. Basic understanding of network security and security protocols. Strong analytical skills','5 months (Part time)'),(3,'Brand Management Intern','Chicago, IL',1300,'$','Support the brand management team in developing and executing brand strategies. Conduct market research and analyze data to identify trends and opportunities. Assist in managing brand campaigns and projects','Pursuing a degree in Marketing, Business, or a related field. Strong analytical skills and understanding of brand strategy. Excellent communication and interpersonal skills','12 months (Full time)'),(4,'UX/UI Design Intern','San Francisco, CA',1500,'$','Collaborate with developers and designers to create intuitive user experiences. Create wireframes, prototypes, and design mockups. Participate in usability testing and user research','Pursuing a degree in Design, Human-Computer Interaction, or a related field. Familiarity with design tools such as Sketch or Figma. Strong attention to detail and creativity','3 months (Full time)'),(5,'Content Creation Intern','New York, NY',1000,'$','Create and edit content for various platforms. Collaborate with the team to plan and execute content strategies. Analyze audience engagement and recommend improvements','Pursuing a degree in Marketing, Communications, or a related field. Strong writing and editing skills. Familiarity with content management systems is a plus','6 months (Full time)'),(6,'Software Development Intern','Seattle, WA',1800,'$','Assist in developing and maintaining software applications. Collaborate with the team to solve coding problems. Participate in code reviews and contribute to project development','Pursuing a degree in Computer Science or a related field. Familiarity with programming languages such as Java, Python, or C++. Strong problem-solving skills and a willingness to learn','8 months (Part time)'),(7,'Data Analyst Intern','Mumbai, India',18000,'Rs.','Assist in collecting and analyzing data for business insights. Create data visualizations and reports. Work with team members to support data-driven decision-making','Pursuing a degree in Data Science, Mathematics, or a related field. Familiarity with data analysis tools and statistical software. Strong analytical and problem-solving skills','4 months (Full time)'),(8,'Accounting Intern','Bengluru, India',8000,'Rs.','Assist with bookkeeping, financial reporting, and reconciliation. Prepare invoices and help with month-end closing activities. Support the finance team in maintaining records and compliance','Pursuing a degree in Accounting, Finance, or a related field. Basic knowledge of accounting principles and practices. Strong attention to detail and analytical skills','6 months (Part time)'),(9,'Investment Analyst Intern','Boston, MA',1300,'$','Conduct research on investment opportunities and market trends. Analyze financial data and prepare reports. Assist the investment team in portfolio management and decision-making','Pursuing a degree in Finance, Economics, or a related field. Strong analytical skills and familiarity with financial markets. Basic understanding of investment principles','6 months (Full time)'),(10,'Social Media Intern','Los Angeles, CA',800,'$','Assist in creating social media content and campaigns. Monitor social media accounts and engage with audiences. Analyze performance metrics and contribute to strategy development','Pursuing a degree in Marketing, Communications, or a related field. Familiarity with social media platforms and trends. Strong creative and communication skills','10 months (Part time)'),(11,'Risk Management Intern','Hyderabad, India',12000,'Rs.','Assist in assessing and monitoring risks across various areas. Analyze data to identify potential risks and provide recommendations. Support the risk management team in implementing strategies','Pursuing a degree in Finance, Economics, or a related field. Strong analytical and quantitative skills. Familiarity with risk assessment is a plus','7 months (Full time)'),(12,'Frontend Intern','Remote',6000,'Rs.','In this role, you will assist in developing and implementing front-end features for web applications. You will work closely with senior developers and designers to translate UI/UX designs into functional code. Your tasks will include optimizing applications for speed and usability, participating in code reviews, and supporting testing and debugging efforts to ensure seamless user experiences','We are seeking a Front-End Intern who is currently pursuing a degree in Computer Science, Web Development, or a related field. The ideal candidate should be familiar with front-end technologies such as HTML, CSS, and JavaScript. Basic understanding of front-end frameworks like React, Angular, or Vue.js is a plus. Knowledge of responsive design and cross-browser compatibility is important','3 months (Part time)');
/*!40000 ALTER TABLE `internships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `salary` int(11) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `responsibilites` varchar(2000) DEFAULT NULL,
  `requirements` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,'Data analyst','Bengluru, India',1500000,'Rs.','As a Data Analyst in our team, your responsibilities will include collecting, processing, and analyzing large datasets to uncover insights that drive informed business decisions. You will collaborate with cross-functional teams to understand data requirements, design and implement data models, and present findings through clear and compelling visualizations. Conducting exploratory data analysis, performing statistical analysis, and applying machine learning techniques to extract meaningful patterns will be key aspects of your role','The ideal candidate should possess a Bachelor\'s or Master\'s degree in a quantitative field such as Computer Science, Statistics, or Mathematics. The candidate must have proven experience in data analysis, statistical modeling, and proficiency in programming languages such as Python or R. Strong analytical skills and the ability to derive actionable insights from complex datasets are essential. The candidate should be familiar with data visualization tools, have a solid understanding of database systems, and be able to collaborate effectively with cross-functional teams'),(2,'Data Scientist','Pune, India',1200000,'Rs.','As a Data Analyst, you will be responsible for collecting, processing, and analyzing large datasets to derive actionable insights. Collaborate with cross-functional teams to understand data requirements and design/implement data models. Conduct exploratory data analysis, statistical analysis, and apply machine learning techniques to uncover meaningful patterns. Contribute to data cleansing and validation processes to ensure accuracy','We are looking for a qualified Data Analyst with a Bachelor\'s or Master\'s degree in a quantitative field such as Computer Science, Statistics, or Mathematics. The ideal candidate should possess proven experience in data analysis, statistical modeling, and proficiency in programming languages such as Python or R. Strong analytical skills, expertise in exploratory data analysis, hypothesis testing, and data cleansing are essential'),(3,'Frontend Developer','Remote',800000,'Rs.','As a Frontend Developer, you will be responsible for implementing user interfaces and enhancing user experiences on our web applications. Collaborate with UI/UX designers to translate design mockups into responsive and interactive web pages. Develop reusable and scalable frontend components using modern frameworks. Ensure cross-browser compatibility and optimize applications for maximum speed and scalability. Collaborate with backend developers to integrate frontend components with server-side logic. Stay current with industry best practices and emerging frontend technologies. Participate in code reviews and contribute to the improvement of development processes','We are seeking a talented Frontend Developer with a Bachelor\'s or equivalent degree in Computer Science or a related field. The ideal candidate should have a strong proficiency in HTML, CSS, and JavaScript, with hands-on experience in modern frontend frameworks such as React, Angular, or Vue-js. Solid understanding of responsive web design principles and cross-browser compatibility is essential. Proficiency in version control systems, such as Git, and familiarity with build tools like Webpack are preferred. Strong problem-solving skills, attention to detail, and the ability to translate UI/UX design into code are crucial. Knowledge of RESTful APIs and integration with backend services is desirable'),(4,'Java Developer','Delhi, India',850000,'Rs.','As a Java Developer, you will be responsible for designing, developing, and maintaining high-performance Java applications. Collaborate with cross-functional teams to analyze requirements and translate them into technical specifications. Develop and implement efficient and maintainable code in adherence to coding standards. Participate in the full software development lifecycle, including design, development, testing, and deployment. Contribute to the continuous improvement of development processes and coding practices. Troubleshoot and debug application issues to ensure optimal performance and reliability. Perform code reviews and provide constructive feedback to team members ','We are seeking a skilled Java Developer with a Bachelor\'s or equivalent degree in Computer Science or a related field. The ideal candidate should have a strong foundation in Java programming and hands-on experience in developing robust and scalable Java applications. Proficiency in Java frameworks such as Spring or Hibernate is essential. Solid understanding of object-oriented design principles, data structures, and algorithms is required. Experience with web development technologies, including HTML, CSS, and JavaScript, is a plus. Familiarity with database systems, SQL, and NoSQL databases is preferred. Strong problem-solving skills, attention to detail, and the ability to work collaboratively in an Agile environment are crucial'),(5,'Flutter Developer','San francisco, USA',120000,'$','As a Flutter Developer, you will be responsible for designing, developing, and maintaining cross-platform mobile applications using the Flutter framework. Collaborate with UI/UX designers to translate design mockups into responsive and intuitive user interfaces. Develop and implement efficient and maintainable code following Flutter best practices and design patterns. Integrate with backend services and RESTful APIs to deliver seamless user experiences. Participate in the entire mobile application development lifecycle, including requirements gathering, design, development, testing, and deployment. Perform code reviews, provide feedback, and mentor junior developers to ensure code quality and maintainability','We are seeking a skilled Flutter Developer with a Bachelor\'s degree in Computer Science, Engineering, or equivalent practical experience. The ideal candidate should have demonstrable experience in building mobile applications using the Flutter framework. Proficiency in Dart programming language and a solid understanding of object-oriented programming principles are essential. Hands-on experience with state management, UI/UX design, and integrating RESTful APIs is required. Familiarity with native platform development (iOS/Android) and mobile app deployment processes is a plus. Strong problem-solving skills, attention to detail, and the ability to work in a fast-paced environment are crucia'),(7,'Cloud Solutions Architect','Sydney, Australia',150000,'$','Design and implement cloud solutions to meet business requirements, ensuring scalability, security, and cost-efficiency. Work with cross-functional teams to analyze existing systems and propose cloud migration strategies. Provide guidance and support in cloud best practices and emerging technologies','The ideal candidate holds a Bachelor\'s degree in Computer Science or related field and has extensive experience with cloud platforms (AWS, Azure, Google Cloud). Strong understanding of cloud architecture, infrastructure, and security is essential. Certifications in cloud technologies are a plus'),(8,'Full-Stack Developer','Pune, India',1200000,'Rs.','Develop and maintain web applications from front to back, ensuring high performance and responsiveness. Collaborate with cross-functional teams to gather requirements and create effective solutions. Participate in code reviews and optimize applications for performance and scalability','We seek a Full-Stack Developer with a Bachelor\'s degree in Computer Science or related field and experience in both frontend and backend development. Proficiency in JavaScript frameworks (React, Angular), backend languages (Node.js, Python), and databases (SQL, NoSQL) is essential. Strong problem-solving and communication skills are required'),(9,'Cybersecurity Analyst','Washington, DC',75000,'$','Monitor networks and systems for security breaches, investigate security incidents, and respond to threats. Implement and maintain security policies and procedures. Conduct security audits and provide recommendations for improving security posture','We are looking for a Cybersecurity Analyst with a degree in Information Security, Computer Science, or a related field. A strong understanding of network security, firewalls, intrusion detection, and vulnerability assessment is required. Certifications like CISSP or CompTIA Security+ are a plus'),(10,'DevOps Engineer','Austin, TX',120000,'$','Design and implement CI/CD pipelines, automate deployment and infrastructure management, and monitor production systems for performance and reliability. Work closely with development and operations teams to improve efficiency and ensure smooth deployment processes','The ideal candidate holds a Bachelor\'s degree in Computer Science or related field and has experience with cloud platforms (AWS, Azure), CI/CD pipelines, and containerization technologies (Docker, Kubernetes). Strong scripting skills (Python, Bash) and familiarity with infrastructure as code (Terraform, Ansible) are essential'),(11,'Financial Analyst','Mumbai, India',1000000,'Rs.','Analyze financial data, prepare reports, and provide insights to support decision-making. Monitor performance against budgets, conduct variance analysis, and assist with forecasting and planning. Collaborate with other departments to provide financial recommendations','We seek a Financial Analyst with a Bachelor\'s degree in Finance, Accounting, or a related field. Strong analytical skills and proficiency with Excel and financial modeling are required. Familiarity with data visualization tools such as Tableau is a plus'),(12,'Tax Specialist','Sydney, Australia',75000,'$','Prepare and review tax returns for individuals and businesses, ensuring accuracy and compliance with tax laws. Research tax regulations and provide advice on tax planning strategies. Stay up-to-date with changes in tax laws and regulations','The ideal candidate holds a degree in Accounting or related field and has experience with tax regulations and compliance. Strong analytical skills and attention to detail are required. CPA or Enrolled Agent certification is a plus'),(13,'Social Media Manager','Remote',45000,'$','Develop and implement social media strategies to increase brand awareness and engagement. Create compelling content and manage social media campaigns. Monitor performance metrics and analyze data to optimize strategies','We seek a Social Media Manager with a Bachelor\'s degree in Marketing, Communications, or a related field. Experience managing social media platforms (Facebook, Instagram, Twitter) and running paid advertising campaigns is essential. Strong creative and analytical skills are important'),(14,'Content Strategist','New York, NY',80000,'$',' Develop and execute content strategies across various channels to drive engagement and brand visibility. Create high-quality, audience-focused content, and manage editorial calendars. Work closely with cross-functional teams to align content with marketing goals','We seek a Content Strategist with a degree in Marketing, Communications, or a related field. Strong writing and editing skills, as well as experience in content planning and SEO, are required. Familiarity with content management systems (WordPress) is a plus'),(15,'Risk Analyst','Hyderabad, India',900000,'Rs.',' Assess and monitor risks across various business operations and financial portfolios. Analyze data and trends to identify potential risks and provide recommendations for mitigation strategies. Collaborate with other departments to integrate risk management practices across the organization','We seek a Risk Analyst with a degree in Finance, Economics, or a related field. Strong analytical and quantitative skills are required, along with experience in risk assessment and management. Familiarity with risk modeling tools and regulatory compliance is a plus'),(16,'Brand Manager','San Francisco, CA',105000,'$','Develop and execute brand strategies to drive brand awareness and loyalty. Collaborate with cross-functional teams to align brand messaging across channels. Analyze market trends and consumer feedback to identify opportunities for brand growth and differentiation. Monitor brand performance and make data-driven recommendations','The ideal candidate holds a degree in Marketing, Business, or a related field and has experience in brand management and strategy. Strong communication and leadership skills, along with knowledge of market research and consumer insights, are essential');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-31 13:16:57
