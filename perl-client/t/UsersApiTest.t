=begin comment

EMS API Documentation

Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps

OpenAPI spec version: 0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by Swagger Codegen
# Please update the test cases below to test the API endpoints.
# Ref: https://github.com/swagger-api/swagger-codegen
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::SwaggerClient::UsersApi');

my $api = WWW::SwaggerClient::UsersApi->new();
isa_ok($api, 'WWW::SwaggerClient::UsersApi');

#
# add_user test
#
{
    my $body = undef; # replace NULL with a proper value
    my $x_embarcadero_application_id = undef; # replace NULL with a proper value
    my $x_embarcadero_app_secret = undef; # replace NULL with a proper value
    my $x_embarcadero_master_secret = undef; # replace NULL with a proper value
    my $result = $api->add_user(body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
}

#
# delete_user test
#
{
    my $id = undef; # replace NULL with a proper value
    my $x_embarcadero_application_id = undef; # replace NULL with a proper value
    my $x_embarcadero_app_secret = undef; # replace NULL with a proper value
    my $x_embarcadero_master_secret = undef; # replace NULL with a proper value
    my $result = $api->delete_user(id => $id, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
}

#
# get_user test
#
{
    my $id = undef; # replace NULL with a proper value
    my $x_embarcadero_application_id = undef; # replace NULL with a proper value
    my $x_embarcadero_app_secret = undef; # replace NULL with a proper value
    my $x_embarcadero_master_secret = undef; # replace NULL with a proper value
    my $result = $api->get_user(id => $id, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
}

#
# get_user_fields test
#
{
    my $x_embarcadero_application_id = undef; # replace NULL with a proper value
    my $x_embarcadero_app_secret = undef; # replace NULL with a proper value
    my $x_embarcadero_master_secret = undef; # replace NULL with a proper value
    my $result = $api->get_user_fields(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
}

#
# get_user_groups test
#
{
    my $id = undef; # replace NULL with a proper value
    my $x_embarcadero_application_id = undef; # replace NULL with a proper value
    my $x_embarcadero_app_secret = undef; # replace NULL with a proper value
    my $x_embarcadero_master_secret = undef; # replace NULL with a proper value
    my $result = $api->get_user_groups(id => $id, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
}

#
# get_users test
#
{
    my $x_embarcadero_application_id = undef; # replace NULL with a proper value
    my $x_embarcadero_app_secret = undef; # replace NULL with a proper value
    my $x_embarcadero_master_secret = undef; # replace NULL with a proper value
    my $skip = undef; # replace NULL with a proper value
    my $limit = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $where = undef; # replace NULL with a proper value
    my $result = $api->get_users(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret, skip => $skip, limit => $limit, order => $order, where => $where);
}

#
# login_user test
#
{
    my $body = undef; # replace NULL with a proper value
    my $x_embarcadero_application_id = undef; # replace NULL with a proper value
    my $x_embarcadero_app_secret = undef; # replace NULL with a proper value
    my $x_embarcadero_master_secret = undef; # replace NULL with a proper value
    my $result = $api->login_user(body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
}

#
# logout_user test
#
{
    my $x_embarcadero_application_id = undef; # replace NULL with a proper value
    my $x_embarcadero_app_secret = undef; # replace NULL with a proper value
    my $x_embarcadero_master_secret = undef; # replace NULL with a proper value
    my $result = $api->logout_user(x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
}

#
# signup_user test
#
{
    my $body = undef; # replace NULL with a proper value
    my $x_embarcadero_application_id = undef; # replace NULL with a proper value
    my $x_embarcadero_app_secret = undef; # replace NULL with a proper value
    my $x_embarcadero_master_secret = undef; # replace NULL with a proper value
    my $result = $api->signup_user(body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
}

#
# update_user test
#
{
    my $id = undef; # replace NULL with a proper value
    my $body = undef; # replace NULL with a proper value
    my $x_embarcadero_application_id = undef; # replace NULL with a proper value
    my $x_embarcadero_app_secret = undef; # replace NULL with a proper value
    my $x_embarcadero_master_secret = undef; # replace NULL with a proper value
    my $result = $api->update_user(id => $id, body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
}


1;
