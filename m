Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E61F31786F
	for <lists+tipc-discussion@lfdr.de>; Wed,  8 May 2019 13:37:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hOKsl-0002aH-L1; Wed, 08 May 2019 11:37:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hOKsk-0002Zy-Mw
 for tipc-discussion@lists.sourceforge.net; Wed, 08 May 2019 11:37:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jppUg/whAmckwtuLqnS1uac/tzglAiY6ZW/3VTD5wPU=; b=NCYIxRCmx09zDnryl/PjiTLuPH
 ve9TGQoU4jl9qBV3DO+h1OCi+3zcu9f8tX8kxRsd+5vwLXH3eZhHyAKkJAuQXJNnkSpSW22m/bbgO
 3nqDqqsVOFJn6sOeywIW0BrmAb3qP6VKaeJY7SNrRuW2LDnG2DzFFZKNO58PDALR4o80=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jppUg/whAmckwtuLqnS1uac/tzglAiY6ZW/3VTD5wPU=; b=cGb6Xml9l0wpnNaI57BpFzZiHi
 J2fVyZ0JSuxTqduS7xt7v2ANBzKIL99oUHynOYv+oCX5T6A7+03dSThVcChdDuTlXpAdKt7TPx8bu
 jpA6+iFfLwJKqL+rnfJyLJ9LGivT876skS07IWfdp7Wu3KvLH5sj4LA/QYmj79hoPA3I=;
Received: from mail-eopbgr710089.outbound.protection.outlook.com
 ([40.107.71.89] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.90_1)
 id 1hOKsg-009oMA-9U
 for tipc-discussion@lists.sourceforge.net; Wed, 08 May 2019 11:37:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jppUg/whAmckwtuLqnS1uac/tzglAiY6ZW/3VTD5wPU=;
 b=ogzRbzTV9eSERdRZ12jzqnGdXBgiHxSXhbXLrjzzsmRVKzch8ZS0mQVzkIf2tiN5rTNdnb0LNvuGeUuVJ1qk8XpebABrdOFPrqY7fYq/rriEslC3uj07DkgNxmf4LkXKVvxlyDdMhtoIlyhSH7N9agMh+yEtM9EhNnIAo/rySLo=
Received: from BL0PR1501MB2003.namprd15.prod.outlook.com (52.132.21.33) by
 BL0PR1501MB2034.namprd15.prod.outlook.com (52.132.21.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Wed, 8 May 2019 11:36:52 +0000
Received: from BL0PR1501MB2003.namprd15.prod.outlook.com
 ([fe80::ec20:2800:8222:be11]) by BL0PR1501MB2003.namprd15.prod.outlook.com
 ([fe80::ec20:2800:8222:be11%7]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 11:36:52 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: Parthasarathy Bhuvaragan <parthasarathy.bhuvaragan@gmail.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "ying.xue@windriver.com"
 <ying.xue@windriver.com>
Thread-Topic: [PATCH net v1] tipc: fix hanging clients using poll with
 EPOLLOUT flag
Thread-Index: AQHVBXwngBMLqr7HaUKZ5Y1D/ZRbvKZhGWiw
Date: Wed, 8 May 2019 11:36:52 +0000
Message-ID: <BL0PR1501MB200321C28B46AA7B71B80AEF9A320@BL0PR1501MB2003.namprd15.prod.outlook.com>
References: <20190508085204.26241-1-parthasarathy.bhuvaragan@gmail.com>
In-Reply-To: <20190508085204.26241-1-parthasarathy.bhuvaragan@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1a9be7e6-f90e-489b-2a90-08d6d3a97742
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600141)(711020)(4605104)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BL0PR1501MB2034; 
x-ms-traffictypediagnostic: BL0PR1501MB2034:
x-microsoft-antispam-prvs: <BL0PR1501MB203412A13AFB5F6EFBB81EEF9A320@BL0PR1501MB2034.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2089;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(39860400002)(136003)(366004)(346002)(189003)(199004)(13464003)(86362001)(2201001)(8676002)(229853002)(33656002)(26005)(305945005)(68736007)(186003)(2501003)(476003)(55016002)(71200400001)(71190400001)(446003)(81166006)(66066001)(81156014)(11346002)(8936002)(6436002)(256004)(3846002)(14454004)(52536014)(110136005)(6116002)(25786009)(316002)(53936002)(99286004)(2906002)(74316002)(9686003)(7736002)(6246003)(44832011)(66946007)(73956011)(66446008)(64756008)(66556008)(66476007)(76116006)(5660300002)(486006)(7696005)(6506007)(53546011)(76176011)(478600001)(102836004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR1501MB2034;
 H:BL0PR1501MB2003.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jH6UA4OVwYuAUsqaAH7PeToUW+JW3OKCQbpt20y4AcwerQqf7maSjx1Mb++Uq86ONiUXRrSgsVhe86hBaLd8vzRJEc80y6HOd7PkUVFfo4G5dEuByUuLCRDqNzfck1rnaQt3zPMRdAFxWX7dqdtHoWbJHdG5I6Gtk0xrZHetvim8DU9CIkHYcIbfsDg8t+8LyOGe1CiTb8QMcT/fnvSFnBFeOAOaHpWMLrQuvKUoN/Z2WRb/6CFmfUnoW0L5KIADgVY7In5i+p06qn7K3QQFmqTARk3FQXSra/Vxw57nzJy3iJYw2VVorVmP7tQyasjJZzvpgGuvGT7PFCX1uq6dVbNy/njDTQjDJjgvrS9dMzzn6HnrmdpJAuFkOJhiar3ZK4F7vJIKBz2ut5NXH+62GWOU6FAlYgk25xF83+gkyYI=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a9be7e6-f90e-489b-2a90-08d6d3a97742
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 11:36:52.1893 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR1501MB2034
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.71.89 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hOKsg-009oMA-9U
Subject: Re: [tipc-discussion] [PATCH net v1] tipc: fix hanging clients
 using poll with EPOLLOUT flag
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Acked-by: Jon Maloy <jon.maloy@ericsson.se>

Thanks, Partha.
///jon

> -----Original Message-----
> From: Parthasarathy Bhuvaragan <parthasarathy.bhuvaragan@gmail.com>
> Sent: 8-May-19 04:52
> To: tipc-discussion@lists.sourceforge.net; Jon Maloy
> <jon.maloy@ericsson.com>; ying.xue@windriver.com
> Cc: Parthasarathy Bhuvaragan <parthasarathy.bhuvaragan@gmail.com>
> Subject: [PATCH net v1] tipc: fix hanging clients using poll with EPOLLOUT flag
> 
> commit 517d7c79bdb398 ("tipc: fix hanging poll() for stream sockets")
> introduced a regression for clients using non-blocking sockets.
> After the commit, we send EPOLLOUT event to the client even in
> TIPC_CONNECTING state. This causes the subsequent send() to fail with
> ENOTCONN, as the socket is still not in TIPC_ESTABLISHED state.
> 
> In this commit, we:
> - improve the fix for hanging poll() by replacing sk_data_ready()
>   with sk_state_change() to wake up all clients.
> - revert the faulty updates introduced by commit 517d7c79bdb398
>   ("tipc: fix hanging poll() for stream sockets").
> 
> Fixes: 517d7c79bdb398 ("tipc: fix hanging poll() for stream sockets")
> Signed-off-by: Parthasarathy Bhuvaragan
> <parthasarathy.bhuvaragan@gmail.com>
> ---
>  net/tipc/socket.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c index
> b542f14ed444..2851937f6e32 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -734,11 +734,11 @@ static __poll_t tipc_poll(struct file *file, struct
> socket *sock,
> 
>  	switch (sk->sk_state) {
>  	case TIPC_ESTABLISHED:
> -	case TIPC_CONNECTING:
>  		if (!tsk->cong_link_cnt && !tsk_conn_cong(tsk))
>  			revents |= EPOLLOUT;
>  		/* fall through */
>  	case TIPC_LISTEN:
> +	case TIPC_CONNECTING:
>  		if (!skb_queue_empty(&sk->sk_receive_queue))
>  			revents |= EPOLLIN | EPOLLRDNORM;
>  		break;
> @@ -2041,7 +2041,7 @@ static bool tipc_sk_filter_connect(struct tipc_sock
> *tsk, struct sk_buff *skb)
>  			if (msg_data_sz(hdr))
>  				return true;
>  			/* Empty ACK-, - wake up sleeping connect() and
> drop */
> -			sk->sk_data_ready(sk);
> +			sk->sk_state_change(sk);
>  			msg_set_dest_droppable(hdr, 1);
>  			return false;
>  		}
> --
> 2.21.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
