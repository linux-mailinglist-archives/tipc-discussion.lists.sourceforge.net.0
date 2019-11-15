Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 870C7FE145
	for <lists+tipc-discussion@lfdr.de>; Fri, 15 Nov 2019 16:31:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gB6ZiSh2JO6jxqebbAWFQrxdpCQU8XzDUkAZRiCPuSs=; b=W5GH24w3DTG2m/7hrKHGpQ2ew
	f/UhcG2IJ7tAZokLo9/xOtP/Hi3G4/j1L3DTrOBnWsMg98uDHQozt1GeL+mBz3NPFGo+NpztzJlSh
	gITwcmG/96T5BLEjYTJy1wizuo3vIoqcwe+FkAzxjNBgjMDrTqSug4KdI366jNqR5jmR8=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iVdZW-0001eu-GJ; Fri, 15 Nov 2019 15:31:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iVdZU-0001ee-Rk
 for tipc-discussion@lists.sourceforge.net; Fri, 15 Nov 2019 15:31:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D7jW5bopDNoCnOCo+o8uyy/RK5BadSeg+3xntC8jDww=; b=YFYdPYciXeQ0g/GRfw8OmT2QKd
 l9TVEfgUwo99sgOvVXLNUuIS9nmOFfp16OHGbHIOqYkLCi3goI4rp+vQ/YnTBkJNPV8k0/M9eNc5H
 C9Zn94Cr9W/mXoE6hKGjJN/5vk4d3XwY5hHCbjAGrGC8NAGGv9er8cqpRI+rBIueoAhE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=D7jW5bopDNoCnOCo+o8uyy/RK5BadSeg+3xntC8jDww=; b=Us4jos7C3x972xD6VVvp+dZP7u
 9SnhA6weQwNfbao/AkOZN2QHOjKUAaLiRqgyK8D6f8ax+tqv/y3j+BkZEWk7GYDyrN4dtop36Cubh
 zO7luJK/W9z5eVP4fRRGH2N5Bu6joDBHyoO77pqYaDnay2ARj23sXkXwQOByPvV0iFYA=;
Received: from mail-eopbgr740071.outbound.protection.outlook.com
 ([40.107.74.71] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iVdZN-000qoy-5W
 for tipc-discussion@lists.sourceforge.net; Fri, 15 Nov 2019 15:31:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XYCBFBieWZp+GnZOjMExgklWLjh8HIN6J4t0GKa1mNQEFYJZh0J1UH/AY6QSbtxCfEWFP9kz8rqOKaX5b+GTWxsE/4m1T4x7t2g2gRccSIooHmNg01req8IhQnkSAiOS6LyVyOrewLMob8ojkFZDG25k+yhbR0rUC7wA77Wnd+KLIXJ8LVt5B58gUj4WioIauGKMcjb+Vdi2nkcHdVh2JXnIqh1wJKnrXQo0/2Nib/ny7PAhwiuIX5M73DVqAeicM3DqolGxNuhhZvZLc+iwXFBY75gEutOBHYfqpg4hD8bvzckoo0vKOy3PgXNt4HPlm/6D/S6WsixxLu2EwAQARQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D7jW5bopDNoCnOCo+o8uyy/RK5BadSeg+3xntC8jDww=;
 b=aXeW2UoOYctCRjrThmeuiO8kZVEvaB8529jPayqHQL6akDZoH6JRmUMu9/F8KJtoHwtxpkj8P2SXWYpC35MszmE2McPoAcyw3RPPDjvcXvukltRpWVRWTBK/L8bU8MoyPZo6m4KPSg8EuuT5cheR57xLrjoyR23PpuTn3IuVdquyJ/7qMbqKXtBNJSlooxp6QwvSlTz1DK7RlYOzQl9wuv+IPInEOKL8cEveQxV1R7wUBk8ygGK2Ff8LlyjNfy93Aw+GXCl1LqfK6L4O9JcnUxHVpySYVAJQ/+s3POBZ8c/GHDc3OLQ5vZHT1Cld2Dhom2kA0ljLHKLu2HZabtDgtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D7jW5bopDNoCnOCo+o8uyy/RK5BadSeg+3xntC8jDww=;
 b=n+NE1QOI7Rr4sAz3m5QMhhs/k/PrqgzxIoV13SBOCjQA4qaWLrGneku3hhwsUiJ8K/VH80KoP1XnXMCYn7Q+SmKwVCDn9KmXpDMcTuL4fzsGzgOJN3aYkkp7mxx8gCbAyC98D+w/j4OwUllNAxP2uqQdeAxGy+QBr9317syIdtU=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3591.namprd15.prod.outlook.com (52.132.231.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Fri, 15 Nov 2019 15:31:24 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63%7]) with mapi id 15.20.2451.029; Fri, 15 Nov 2019
 15:31:24 +0000
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "ying.xue@windriver.com" <ying.xue@windriver.com>
Thread-Topic: [tipc-discussion] [net v1 1/1] tipc: fix wrong timeout input for
 tipc_wait_for_cond()
Thread-Index: AQHVm5Qm9ivE4f8Ex0Casncj+H9YoaeMXD3A
Date: Fri, 15 Nov 2019 15:31:24 +0000
Message-ID: <CH2PR15MB357576CB76E54FC3CCAD04159A700@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20191115090725.1967-1-tung.q.nguyen@dektech.com.au>
In-Reply-To: <20191115090725.1967-1-tung.q.nguyen@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 15aac4c5-9b91-414f-2b50-08d769e0dff1
x-ms-traffictypediagnostic: CH2PR15MB3591:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB3591D423A990391393940D8D9A700@CH2PR15MB3591.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:489;
x-forefront-prvs: 02229A4115
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(346002)(39860400002)(136003)(396003)(189003)(13464003)(199004)(229853002)(305945005)(55016002)(7736002)(316002)(14454004)(74316002)(76176011)(7696005)(5660300002)(3846002)(6116002)(25786009)(6436002)(14444005)(256004)(446003)(11346002)(102836004)(99286004)(66066001)(476003)(26005)(186003)(486006)(44832011)(478600001)(6506007)(53546011)(71190400001)(64756008)(66946007)(66556008)(66476007)(2201001)(66446008)(71200400001)(86362001)(110136005)(2906002)(6246003)(8936002)(2501003)(81166006)(76116006)(81156014)(8676002)(9686003)(52536014)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3591;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wC3Hr84EOKT1i1+zoxZrplrsgZjhclLppvXbWUfBc7qAHqGeoamTU8T+iN6pc92/VDFrWt3+9Xj/eIFLHoXl5Y692nzDPhhM/sb9Ge0ata0xIk4ScLwzAiL4m4XEPNedfJPL9/DP6Dv+xSFGplhkG4LwWjFJ3LbOog2DuxNCHAHEoiLui/VSSd7SGgKpPg4vUyYLCIKZy/IiLtK9E9qPABaopTwWJIFJTCzY80O7e3KLc9UZWuT6brUifdE7W17oEyqnCtM0hR3lBJ8g+e+i4RiPWLa0DeA8RTCS53yJtxjM4yn/3AI3xrhQpymKiVziBB1oFWAhFj3EUTgTMy5HdfR0yXYRwQXRBc3lVr/b5a4CJvmA0CZ9K4VjVar6/HIaxdwClf9dGXTVuAcqR5w1aoRlDPz5x2XH1OtlvecJLklvH8bsvyfgbt+fsugf2e5C
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15aac4c5-9b91-414f-2b50-08d769e0dff1
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2019 15:31:24.5580 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fl9yFKISu/4rcM0Z1m0Dr1rBs92h3RkB8xgMF4czGpChHE0K6OEJkHgvG5UcnLhDsEx4VdYwRPTT+v1aOz3v/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3591
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.74.71 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iVdZN-000qoy-5W
Subject: Re: [tipc-discussion] [net v1 1/1] tipc: fix wrong timeout input
 for tipc_wait_for_cond()
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
From: Jon Maloy via tipc-discussion <tipc-discussion@lists.sourceforge.net>
Reply-To: Jon Maloy <jon.maloy@ericsson.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Acked
///jon

> -----Original Message-----
> From: Tung Nguyen <tung.q.nguyen@dektech.com.au>
> Sent: 15-Nov-19 04:07
> To: tipc-discussion@lists.sourceforge.net; Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com;
> ying.xue@windriver.com
> Subject: [tipc-discussion] [net v1 1/1] tipc: fix wrong timeout input for tipc_wait_for_cond()
> 
> In function __tipc_shutdown(), the timeout value passed to
> tipc_wait_for_cond() is not jiffies.
> 
> This commit fixes it by converting that value from milliseconds
> to jiffies.
> 
> Fixes: 365ad353c256 ("tipc: reduce risk of user starvation during link congestion")
> Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
> ---
>  net/tipc/socket.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> index d7be43f5..506d264 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -532,7 +532,7 @@ static void __tipc_shutdown(struct socket *sock, int error)
>  	struct sock *sk = sock->sk;
>  	struct tipc_sock *tsk = tipc_sk(sk);
>  	struct net *net = sock_net(sk);
> -	long timeout = CONN_TIMEOUT_DEFAULT;
> +	long timeout = msecs_to_jiffies(CONN_TIMEOUT_DEFAULT);
>  	u32 dnode = tsk_peer_node(tsk);
>  	struct sk_buff *skb;
> 
> --
> 2.1.4


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
