Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6752C4CE54
	for <lists+tipc-discussion@lfdr.de>; Thu, 20 Jun 2019 15:09:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hdwof-0005XZ-Vn; Thu, 20 Jun 2019 13:09:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hdwoe-0005X9-IV
 for tipc-discussion@lists.sourceforge.net; Thu, 20 Jun 2019 13:09:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CidO0yKQjwgkjJw3BY98JjijXAQuGrgvKx41rqCyk+U=; b=JZU4I2UIFVDXysLQTsV+Su1yAf
 GzVNGSch15PJIhnnWRxtQ8stoBmm+/S5dj1swTiHG906DnoPiZZe9kBW5HsFNTdhT9XPggA4Pa5fl
 r6nPPbJYCchHBXRfJscL+9rnTXfKXNx+SVOrXHElSZOFJ2EL/czI2q2UfKCg71OuIJjk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CidO0yKQjwgkjJw3BY98JjijXAQuGrgvKx41rqCyk+U=; b=RszoUCmHjCLOpCECRGzQv2ZHYG
 nmutxLWarvNO7HIYnllkMQsQo2RordELLrcDcEDgc7ZaBf1e0qVeRbUQIPXOJlcJeOT2uG2m0cY3c
 UC6mrTdzJ3WmK7kVwR9XZASlO7a7xKfXF8rlUHQLFumsObmrcYiFAvFLQH/FTgTqD6bw=;
Received: from mail-eopbgr690044.outbound.protection.outlook.com
 ([40.107.69.44] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hdwoc-001PxI-0x
 for tipc-discussion@lists.sourceforge.net; Thu, 20 Jun 2019 13:09:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CidO0yKQjwgkjJw3BY98JjijXAQuGrgvKx41rqCyk+U=;
 b=LutsJg51OXshWfCdZFgeMwT8Tmf/lNAZjp4UBqBOAeFUj5ZaQET1WATQac/lMuxrg5lssSkb4DWNTvtm0U8bkLRl+sWxPZaN0ejBFKwGs/CCWxsfQQHhdp906qqmeRnShEyiq5/MpyazcMv97Nh2ikmYahBMwb5ycBLnu/5H9H4=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (52.132.228.77) by
 CH2PR15MB3560.namprd15.prod.outlook.com (52.132.228.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.12; Thu, 20 Jun 2019 12:53:57 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::8d6a:e759:6fd:5ee0]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::8d6a:e759:6fd:5ee0%7]) with mapi id 15.20.1987.014; Thu, 20 Jun 2019
 12:53:57 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: Xin Long <lucien.xin@gmail.com>, network dev <netdev@vger.kernel.org>
Thread-Topic: [PATCH net] tipc: change to use register_pernet_device
Thread-Index: AQHVJ1R7YAlg7caNfkmzB0tqLYARp6akfyJw
Date: Thu, 20 Jun 2019 12:53:57 +0000
Message-ID: <CH2PR15MB3575BD179FA3B0DB95BAFA149AE40@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <1a8f3ada3e0a65b6e9250c4580a7c420b4ddddac.1561027168.git.lucien.xin@gmail.com>
In-Reply-To: <1a8f3ada3e0a65b6e9250c4580a7c420b4ddddac.1561027168.git.lucien.xin@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [198.24.6.220]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 39e1338f-ff69-44ae-989b-08d6f57e5bf5
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2PR15MB3560; 
x-ms-traffictypediagnostic: CH2PR15MB3560:
x-microsoft-antispam-prvs: <CH2PR15MB35607DB049FC0BC1FACEE93B9AE40@CH2PR15MB3560.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2043;
x-forefront-prvs: 0074BBE012
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(366004)(396003)(346002)(39850400004)(199004)(189003)(13464003)(486006)(102836004)(53546011)(26005)(186003)(66556008)(73956011)(66066001)(44832011)(11346002)(76176011)(76116006)(25786009)(476003)(6506007)(66446008)(64756008)(66476007)(446003)(478600001)(4326008)(316002)(81156014)(110136005)(8936002)(6246003)(86362001)(55016002)(52536014)(6436002)(66946007)(14454004)(229853002)(9686003)(8676002)(81166006)(33656002)(6116002)(3846002)(53936002)(54906003)(99286004)(5660300002)(71190400001)(74316002)(7696005)(2906002)(71200400001)(256004)(7736002)(305945005)(68736007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3560;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7C7P8UMUxMfewkB5FXG3FYwuefJsjQFY6xTP7XKZcMRA3zt4mIZYNQsQYpjxzKwkuI/btYsWuNFymsDn9mQTlT0ngAGsILWEWbIHYDlsPo4mNv0YFYpXl/luPawLvaMvHIb701UVvg3oyS8K/yd7E5zujzCovEvEOt6luDRgGrnuo9C1InE7tQbjEHCC2PH7Gz9TPHAWBlHpEX8tUej2ytoDMARmgzVInxBvKnD5cyQWOMwRo3ST9YqlT4fgM9aUEvubuIAivCB1hRR8hmU+NiPPFh5bHYYSnZK4M9nMnpap1R8mN0kyGNBaJLkEVLdFaZ7Hw9CGgFkL8YpAVuGK7sS2KRt0OBruskugx/hxogQB43WeHzdIMcuygb+wrRksDC9hSw+9U7U2E5ajj4+ijPMHBTasoobzCQ/7gTlj9Mc=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39e1338f-ff69-44ae-989b-08d6f57e5bf5
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2019 12:53:57.5201 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jon.maloy@ericsson.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3560
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: davemloft.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.69.44 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hdwoc-001PxI-0x
Subject: Re: [tipc-discussion] [PATCH net] tipc: change to use
 register_pernet_device
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Acked-by: Jon Maloy <jon.maloy@ericsson.com>

> -----Original Message-----
> From: netdev-owner@vger.kernel.org <netdev-owner@vger.kernel.org> On
> Behalf Of Xin Long
> Sent: 20-Jun-19 06:39
> To: network dev <netdev@vger.kernel.org>
> Cc: davem@davemloft.net; Jon Maloy <jon.maloy@ericsson.com>; Ying Xue
> <ying.xue@windriver.com>; tipc-discussion@lists.sourceforge.net
> Subject: [PATCH net] tipc: change to use register_pernet_device
> 
> This patch is to fix a dst defcnt leak, which can be reproduced by doing:.ericsson.com>
> 
>   # ip net a c; ip net a s; modprobe tipc
>   # ip net e s ip l a n eth1 type veth peer n eth1 netns c
>   # ip net e c ip l s lo up; ip net e c ip l s eth1 up
>   # ip net e s ip l s lo up; ip net e s ip l s eth1 up
>   # ip net e c ip a a 1.1.1.2/8 dev eth1
>   # ip net e s ip a a 1.1.1.1/8 dev eth1
>   # ip net e c tipc b e m udp n u1 localip 1.1.1.2
>   # ip net e s tipc b e m udp n u1 localip 1.1.1.1
>   # ip net d c; ip net d s; rmmod tipc
> 
> and it will get stuck and keep logging the error:
> 
>   unregister_netdevice: waiting for lo to become free. Usage count = 1
> 
> The cause is that a dst is held by the udp sock's sk_rx_dst set on udp rx path
> with udp_early_demux == 1, and this dst (eventually holding lo dev) can't be
> released as bearer's removal in tipc pernet .exit happens after lo dev's
> removal, default_device pernet .exit.
> 
>  "There are two distinct types of pernet_operations recognized: subsys and
>   device.  At creation all subsys init functions are called before device
>   init functions, and at destruction all device exit functions are called
>   before subsys exit function."
> 
> So by calling register_pernet_device instead to register tipc_net_ops, the
> pernet .exit() will be invoked earlier than loopback dev's removal when a
> netns is being destroyed, as fou/gue does.
> 
> Note that vxlan and geneve udp tunnels don't have this issue, as the udp sock
> is released in their device ndo_stop().
> 
> This fix is also necessary for tipc dst_cache, which will hold dsts on tx path and
> I will introduce in my next patch.
> 
> Reported-by: Li Shuang <shuali@redhat.com>
> Signed-off-by: Xin Long <lucien.xin@gmail.com>
> ---
>  net/tipc/core.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/net/tipc/core.c b/net/tipc/core.c index ed536c0..c837072 100644
> --- a/net/tipc/core.c
> +++ b/net/tipc/core.c
> @@ -134,7 +134,7 @@ static int __init tipc_init(void)
>  	if (err)
>  		goto out_sysctl;
> 
> -	err = register_pernet_subsys(&tipc_net_ops);
> +	err = register_pernet_device(&tipc_net_ops);
>  	if (err)
>  		goto out_pernet;
> 
> @@ -142,7 +142,7 @@ static int __init tipc_init(void)
>  	if (err)
>  		goto out_socket;
> 
> -	err = register_pernet_subsys(&tipc_topsrv_net_ops);
> +	err = register_pernet_device(&tipc_topsrv_net_ops);
>  	if (err)
>  		goto out_pernet_topsrv;
> 
> @@ -153,11 +153,11 @@ static int __init tipc_init(void)
>  	pr_info("Started in single node mode\n");
>  	return 0;
>  out_bearer:
> -	unregister_pernet_subsys(&tipc_topsrv_net_ops);
> +	unregister_pernet_device(&tipc_topsrv_net_ops);
>  out_pernet_topsrv:
>  	tipc_socket_stop();
>  out_socket:
> -	unregister_pernet_subsys(&tipc_net_ops);
> +	unregister_pernet_device(&tipc_net_ops);
>  out_pernet:
>  	tipc_unregister_sysctl();
>  out_sysctl:
> @@ -172,9 +172,9 @@ static int __init tipc_init(void)  static void __exit
> tipc_exit(void)  {
>  	tipc_bearer_cleanup();
> -	unregister_pernet_subsys(&tipc_topsrv_net_ops);
> +	unregister_pernet_device(&tipc_topsrv_net_ops);
>  	tipc_socket_stop();
> -	unregister_pernet_subsys(&tipc_net_ops);
> +	unregister_pernet_device(&tipc_net_ops);
>  	tipc_netlink_stop();
>  	tipc_netlink_compat_stop();
>  	tipc_unregister_sysctl();
> --
> 2.1.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
