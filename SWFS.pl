#!usr/bin/perl
print "content-type: text/html\n\n";
  
use strict;
use warnings;
use File::Basename;
use File::Find;
use File::Copy;


  
finddepth(
{
    wanted => \&findfiles,
},
'C:\Users\Chris\onedrive\documents'
);
  
sub findfiles
{
    my $DestFolder = 'C:\Users\Chris\onedrive\documents\School-work';
    #To search the files directory
	my $baseName = basename($File::Find::name);
	my $destName = "${DestFolder}\\${baseName}";
	if (/^.*docx$/ or /^.*pdf$/) {
		print "${baseName}\n"; 
		if ($baseName =~ /Engineering/) {
			$destName = "${DestFolder}\\Engineering\\${baseName}";
			move($File::Find::name, $destName); 
		} elsif ($baseName =~ /English/) {
			$destName = "${DestFolder}\\English\\${baseName}";
			move($File::Find::name, $destName); 
		} elsif ($baseName =~ /Maths/) {
			$destName = "${DestFolder}\\Maths\\${baseName}";
			move($File::Find::name, $destName); 
		} elsif ($baseName =~ /Science/) {
			$destName = "${DestFolder}\\Science\\${baseName}";
			move($File::Find::name, $destName); 
		} elsif ($baseName =~ /STEM/) {
			$destName = "${DestFolder}\\STEM\\${baseName}";
			move($File::Find::name, $destName); 
		} elsif ($baseName =~ /Hag/) {
		    $destName = "${DestFolder}\\Hag\\${baseName}";
			move($File::Find::name, $destName); 
		} elsif ($baseName =~ /PDHPE/) { 
		    $destName = "${DestFolder}\\PDHPE\\${baseName}";
			move($File::Find::name, $destName);
		} elsif ($baseName =~ /Making-History/) {
			$destName = "${DestFolder}\\Making-History\\${baseName}";
			move ($File::Find::name, $destName);
		}
		} elsif ($baseName =~ /Programming/) {
			$destName = "${DestFolder}\\Programming\\${baseName}";
			move ($File::Find::name, $destName);
		}
	}; 


finddepth(
{
    wanted => \&findfiles,
},
'C:\Users\chris\Downloads'
);
  
sub findfiles
{
    my $DestFolder = 'C:\Users\Chris\onedrive\documents\School-work';
    #To search the files directory
	my $baseName = basename($File::Find::name);
	my $destName = "${DestFolder}\\${baseName}";
	if (/^.*docx$/ or /^.*pdf$/) {
		print "${baseName}\n"; 
		if ($baseName =~ /Engineering/) {
			$destName = "${DestFolder}\\Engineering\\${baseName}";
			move($File::Find::name, $destName); 
		} elsif ($baseName =~ /English/) {
			$destName = "${DestFolder}\\English\\${baseName}";
			move($File::Find::name, $destName); 
		} elsif ($baseName =~ /Maths/) {
			$destName = "${DestFolder}\\Maths\\${baseName}";
			move($File::Find::name, $destName); 
		} elsif ($baseName =~ /Science/) {
			$destName = "${DestFolder}\\Science\\${baseName}";
			move($File::Find::name, $destName); 
		} elsif ($baseName =~ /STEM/) {
			$destName = "${DestFolder}\\STEM\\${baseName}";
			move($File::Find::name, $destName); 
		} elsif ($baseName =~ /Hag/) {
		    $destName = "${DestFolder}\\Hag\\${baseName}";
			move($File::Find::name, $destName); 
		} elsif ($baseName =~ /PDHPE/) { 
		    $destName = "${DestFolder}\\PDHPE\\${baseName}";
			move($File::Find::name, $destName);
		} elsif ($baseName =~ /Making-History/) {
			$destName = "${DestFolder}\\Making-History\\${baseName}";
			move ($File::Find::name, $destName);
		}
	}; 
};

exit;


