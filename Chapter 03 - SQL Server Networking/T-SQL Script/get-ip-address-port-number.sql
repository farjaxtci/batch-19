-- get ip address and port number 

select distinct local_net_address, local_tcp_port 
from sys.dm_exec_connections where local_net_address is not null;

-- all of theport are assign to  this sql server 
select @@SERVERNAME,local_tcp_port 
as [ sql server port number] from sys.dm_exec_connections; 


select  local_tcp_port, net_transport, client_net_address, local_net_address   
from sys.dm_exec_connections; 