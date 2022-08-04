rule Github_Repo_Compromise_MyJino_Aug22 {

   meta:
      description = "Detects URLs linked to compromised Github repositories in August 2022 (MyJino.ru)"
      author = "edoardottt"
      date = "2022-08-04"
      reference = "https://twitter.com/stephenlacy/status/1554697077430505473"

   strings:
      $c1 = "ovz1.j19544519.pr46m.vps.myjino.ru" ascii wide
      $c2 = "ovz1.winstrool0.67m36.vps.myjino.ru" ascii wide
      $c3 = "ovz1.vanixachatryan.zmy3z.vps.myjino.ru" ascii wide
      $c4 = "ovz1.diamostranger.m843p.vps.myjino.ru" ascii wide

   condition:
      1 of them
}