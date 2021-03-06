CREATE TABLE API_REQUEST_SUMMARY ( api VARCHAR2(100), api_version VARCHAR2(100), version VARCHAR2(100),
	apiPublisher VARCHAR2(100),consumerKey VARCHAR2(100),userId VARCHAR2(100), context VARCHAR2(100),max_request_time NUMBER(30), total_request_count INT, hostName VARCHAR2(100), year SMALLINT, month SMALLINT, day SMALLINT, time VARCHAR2(30),PRIMARY KEY(api,api_version,apiPublisher,consumerKey,userId,context,hostName,time));

CREATE TABLE API_VERSION_USAGE_SUMMARY ( api VARCHAR2(100), version VARCHAR2(100),apiPublisher VARCHAR2(100),context VARCHAR2(100),
	total_request_count INT,hostName VARCHAR2(100), year SMALLINT, month SMALLINT, day SMALLINT, time VARCHAR2(30), PRIMARY KEY(api,version,apiPublisher,context,hostName,time));

CREATE TABLE API_Resource_USAGE_SUMMARY ( api VARCHAR2(100), version VARCHAR2(100),apiPublisher VARCHAR2(100) , consumerKey VARCHAR2(100),resourcePath VARCHAR2(100) ,context VARCHAR2(100),
	method VARCHAR2(100), total_request_count INT, hostName VARCHAR2(100), year SMALLINT, month SMALLINT, day SMALLINT, time VARCHAR2(30), PRIMARY KEY(api,version,apiPublisher,consumerKey,context,resourcePath,method,time));

CREATE TABLE API_RESPONSE_SUMMARY ( api_version VARCHAR2(100),apiPublisher VARCHAR2(100),
	context VARCHAR2(100),serviceTime INT,total_response_count INT,hostName VARCHAR2(100), year SMALLINT, month SMALLINT, day SMALLINT, time VARCHAR2(30), PRIMARY KEY(api_version,apiPublisher,context,hostName,time));

CREATE TABLE API_FAULT_SUMMARY ( api VARCHAR2(100), version VARCHAR2(100),apiPublisher VARCHAR2(100),consumerKey VARCHAR2(100),context VARCHAR2(100),
	total_fault_count INT, hostName VARCHAR2(100), year SMALLINT, month SMALLINT, day SMALLINT, time VARCHAR2(30), PRIMARY KEY(api,version,apiPublisher,context,hostName,time));

CREATE TABLE API_DESTINATION_SUMMARY ( api VARCHAR2(100), version VARCHAR2(100),apiPublisher VARCHAR2(100),context VARCHAR2(100),destination VARCHAR2(100),
	total_request_count INT, hostName VARCHAR2(100), year SMALLINT, month SMALLINT, day SMALLINT, time VARCHAR2(30), PRIMARY KEY(api,version,apiPublisher,context,destination,hostName,time));

CREATE TABLE API_THROTTLED_OUT_SUMMARY ( api VARCHAR2(100), api_version VARCHAR2(100),context VARCHAR2(100),apiPublisher VARCHAR2(100), applicationName VARCHAR2(100), tenantDomain VARCHAR2(100), year SMALLINT, month SMALLINT, day SMALLINT, week INT, time VARCHAR2(30), success_request_count INT , throttleout_count INT, PRIMARY KEY(api,api_version,context,apiPublisher,applicationName,tenantDomain,time));

CREATE TABLE API_LAST_ACCESS_TIME_SUMMARY (
    tenantDomain VARCHAR2(100),
    apiPublisher VARCHAR2(100),
    api VARCHAR2(100),
    version VARCHAR2(100),
    userId VARCHAR2(100),
    context VARCHAR2(100),
    max_request_time NUMBER(30),
    PRIMARY KEY (tenantDomain,apiPublisher,api)
);

CREATE TABLE API_EXECUTION_TME_DAY_SUMMARY (
  api VARCHAR2(100),
  version VARCHAR2(100),
  apiPublisher VARCHAR2(100),
  context VARCHAR2(100),
  mediationName VARCHAR2(100),
  executionTime NUMBER(10),
  year NUMBER(5),
  month NUMBER(5),
  day NUMBER(5),
  time NUMBER(19),
  PRIMARY KEY (api,version,apiPublisher,context,year,month,day,mediationName)
);

CREATE TABLE API_EXECUTION_TIME_HOUR_SUMMARY (
  api VARCHAR2(100),
  version VARCHAR2(100),
  apiPublisher VARCHAR2(100),
  context VARCHAR2(100),
  mediationName VARCHAR2(100),
  executionTime NUMBER(10),
  year NUMBER(5),
  month NUMBER(5),
  day NUMBER(5),
  hour NUMBER(5),
  time NUMBER(19),
  PRIMARY KEY (api,version,apiPublisher,context,year,month,day,hour,mediationName)
);

CREATE TABLE API_EXECUTION_TIME_MINUTE_SUMMARY (
  api VARCHAR2(100),
  version VARCHAR2(100),
  apiPublisher VARCHAR2(100),
  context VARCHAR2(100),
  mediationName VARCHAR2(100),
  executionTime NUMBER(10),
  year NUMBER(5),
  month NUMBER(5),
  day NUMBER(5),
  hour NUMBER(5),
  minutes NUMBER(5),
  time NUMBER(19),
  PRIMARY KEY (api,version,apiPublisher,context,year,month,day,hour,minutes,mediationName)
);

CREATE TABLE API_EXECUTION_TIME_SECONDS_SUMMARY (
  api VARCHAR2(100),
  version VARCHAR2(100),
  apiPublisher VARCHAR2(100),
  context VARCHAR2(100),
  mediationName VARCHAR2(100),
  executionTime NUMBER(10),
  year NUMBER(5),
  month NUMBER(5),
  day NUMBER(5),
  hour NUMBER(5),
  minutes NUMBER(5),
  seconds NUMBER(5),
  time NUMBER(19),
  PRIMARY KEY (api,version,apiPublisher,context,year,month,day,hour,minutes,seconds,mediationName)
);
CREATE TABLE IF NOT EXISTS API_REQUEST_GEO_LOCATION_SUMMARY (
  api VARCHAR2(100) NUMBER,
  version VARCHAR2(100) NUMBER,
  apiPublisher VARCHAR2(100) NUMBER,
  tenantDomain VARCHAR2(100) NUMBER,
  total_request_count int(11),
  year NUMBER(6),
  month NUMBER(6),
  day NUMBER(6),
  requestTime NUMBER(20),
  country VARCHAR2(200) NOT NULL,
  city VARCHAR2(200) NOT NULL
  PRIMARY KEY (api,version,apiPublisher,year,month,day,tenantDomain,country,city)
);

