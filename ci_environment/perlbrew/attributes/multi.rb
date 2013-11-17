default[:perlbrew] = {
  :perls   => [{ :name => "5.19", :version => "perl-5.19.0" },
               { :name => "5.18", :version => "perl-5.18.0" },
               { :name => "5.17", :version => "perl-5.17.7" },
               { :name => "5.16", :version => "perl-5.16.3" },
               { :name => "5.14", :version => "perl-5.14.4" },
               { :name => "5.12", :version => "perl-5.12.5" },
               { :name => "5.10", :version => "perl-5.10.1" },
               { :name => "5.8",  :version => "perl-5.8.9"  }],
  :modules => %w(Dist::Zilla Moose Test::Pod Test::Pod::Coverage Test::Exception Test::Kwalitee LWP Module::Install Test::Most)
}
