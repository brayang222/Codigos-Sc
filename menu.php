sc_reset_apl_status();
sc_lookup(dataset, "select login, pswd, name, email from sec_users where login = '{usuario}' ");

if(!isset({dataset[0][0]}))
{
    sc_error_message({lang_login_message_10});
    sc_error_exit();
}else
{
  $senha_teste = md5({senha});
	$usr_name = {dataset[0][2]};
    $usr_email = {dataset[0][3]};
	$usr_login = {dataset[0][0]};
	sc_set_global($usr_name);
    sc_set_global($usr_email);
	sc_set_global($usr_login);
  if ($senha_teste != {dataset[0][1]})
  {
    sc_error_message({lang_login_message_10});
    sc_error_exit();
  }


  //updateTaskDaysOverdue();
  sc_redir('menu.php', v_resource={dataset[0][0]});
}
