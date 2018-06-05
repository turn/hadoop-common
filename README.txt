Apr 17, 2019 - Sandy Sim
This is a hacked version of 2.6.0-cdh5.16.1 which has a backport of MAPREDUCE-6441.011
We needed this to fix an instability in our datamine medium test framework 
(due to running tests in parallel and the referenced bug which causes tmp files 
to get the same name if tests are started at the same instant)

The change tries to patch the whole hadoop-common tarball, but we only needed 
org.apache.hadoop:hadoop-mapreduce-client-common:2.6.0-cdh5.16.1-turn-0.1

so I changed the build script to only deploy from hadoop-mapreduce-project


For the latest information about Hadoop, please visit our website at:

   http://hadoop.apache.org/core/

and our wiki, at:

   http://wiki.apache.org/hadoop/

This distribution includes cryptographic software.  The country in 
which you currently reside may have restrictions on the import, 
possession, use, and/or re-export to another country, of 
encryption software.  BEFORE using any encryption software, please 
check your country's laws, regulations and policies concerning the
import, possession, or use, and re-export of encryption software, to 
see if this is permitted.  See <http://www.wassenaar.org/> for more
information.

The U.S. Government Department of Commerce, Bureau of Industry and
Security (BIS), has classified this software as Export Commodity 
Control Number (ECCN) 5D002.C.1, which includes information security
software using or performing cryptographic functions with asymmetric
algorithms.  The form and manner of this Apache Software Foundation
distribution makes it eligible for export under the License Exception
ENC Technology Software Unrestricted (TSU) exception (see the BIS 
Export Administration Regulations, Section 740.13) for both object 
code and source code.

The following provides more details on the included cryptographic
software:
  Hadoop Core uses the SSL libraries from the Jetty project written 
by mortbay.org.
