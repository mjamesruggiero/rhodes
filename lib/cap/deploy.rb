# -*- encoding : utf-8 -*-

desc 'Release latest version of rhodes Service'
namespace :deploy do
  task :default do
    credentials = 'deployer:SroTIGdn9G'
    appname = 'cqs'
    release_url = "http://sharethrough.artifactoryonline.com/sharethrough/libs-releases-local/com/sharethrough/#{appname}_2.10/[RELEASE]/#{appname}_2.10-[RELEASE].zip"
    release_dir = "/opt/javaservice/#{Time.now.strftime('%Y%m%d%H%M%S')}"
    symlink_dir = '/opt/javaservice/current'

    run "mkdir -p #{release_dir}"
    run "curl -o #{release_dir}/#{appname}.zip --user #{credentials} -g '#{release_url}'"
    run "unzip -d #{release_dir} #{release_dir}/#{appname}.zip"
    run "cd #{release_dir}/#{appname} && mv * #{release_dir}/ && rm -rf #{release_dir}/#{appname}"
    run "chmod a+x #{release_dir}/bin/run_server"
    run "rm -f #{symlink_dir}"
    run "ln -s #{release_dir} #{symlink_dir}"
    sudo "service javaservice restart"
  end
end
