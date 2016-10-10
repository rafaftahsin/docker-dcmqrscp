# docker-dcmqrscp

Docker image for dcmqrscp
-------------------------

This image uses a configuration file based on a Tutorial [DCMTK PACS Debugging](http://support.dcmtk.org/redmine/projects/dcmtk/wiki/Howto_PACSDebuggingWithDCMTK). Details of every command can be found in the tutorial link.

 - To test the connection

        echoscu -d localhost 11112 -aec ACME_STORE -aet ACME1

 - To store dicom image. Remember to set local `AETitle` and other configurations.

        storescu localhost 11112 ct.dcm -aec ACME_STORE -aet ACME1

 - To search dicom images in the server

        findscu -v -S -aec ACME_STORE -aet ACME1 localhost 11112 -k QueryRetrieveLevel=STUDY -k StudyDate -k StudyDescription -k StudyInstanceUID

 - To retrieve image locally use `movesu` command.



