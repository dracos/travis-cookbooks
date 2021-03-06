apt_repository "boost-backports" do
  uri          "http://ppa.launchpad.net/mapnik/boost/ubuntu"
  distribution node["lsb"]["codename"]
  components   ["main"]
  keyserver    "hkp://ha.pool.sks-keyservers.net"
  key          "5D50B6BA"
  action       :add
end

apt_repository "hhvm-repository" do
  uri          "http://dl.hhvm.com/ubuntu"
  distribution node["lsb"]["codename"]
  components   ["main"]
  key          "http://dl.hhvm.com/conf/hhvm.gpg.key"
  action       :add
  not_if { node['hhvm']['package']['disabled'] }
end

package node["hhvm"]["package"]["name"] do
  action  :install
  options "--force-yes"
  not_if { node['hhvm']['package']['disabled'] }
end
