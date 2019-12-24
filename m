Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9B912A1AC
	for <lists+tipc-discussion@lfdr.de>; Tue, 24 Dec 2019 14:20:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XZ1sKlmIX8ZiLb1xwRd2pDzfH8K6Co6lhP7kwgut2g4=; b=NgNX2pMUx6KbQiUpY5iPZgBsE
	nEjfwNwsRQGJtZ2uBDpHXicrowmq+LbA8vZlEnBZhac+j/BkGlB08ATIUdNA0v66UIURcN0o+j6FY
	t1HuJsGPdR6rxnZSyQETT1mmPdEnoeFsEiG/7CpEj0aUzTK/ipGO6sxK4ldIrylTcWvvs=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ijk6i-0001nn-Pq; Tue, 24 Dec 2019 13:20:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1ijk6h-0001nU-Ib
 for tipc-discussion@lists.sourceforge.net; Tue, 24 Dec 2019 13:20:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wCdX0IjZqpx08GzdRymyZ9WnsIapNNXM0WqIhFD35Oo=; b=P5kFpE/gjqq4gWQJCmj9Yyyp+a
 9q40stwMlBY/I0iyEXrpBs8GhcoyjZRYl5up2iuBaJsyQeFQYI1oRyNUriRY/JSYoC/dK5pPQcnd0
 LNegNexYbrNrscHS5Dba+WntypEoUINBxJ5Tg9X8RLHwftoez+uLiaCht+8/RkJWNeeY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wCdX0IjZqpx08GzdRymyZ9WnsIapNNXM0WqIhFD35Oo=; b=N3y04ca5J1+hXBoJFmvwm6jvjJ
 oehonTxMQzunHsFziuVlW3DbKZZSuz9sgHB3hTDl6KE5rim0Jbd38Fey/E+63RXjYIFx+qjoS21ke
 +xS8huJzP3LAY5iphxMKUtkRhC47VVBUtEJnz2ETykIwNIHwM3CxS3N+iF2fgk4yZwWE=;
Received: from mail-eopbgr60058.outbound.protection.outlook.com ([40.107.6.58]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ijk6c-00E7lB-Q6
 for tipc-discussion@lists.sourceforge.net; Tue, 24 Dec 2019 13:20:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LPNbRJCLSXPitxpZ0tawgibaqh2D+ZCVohuS5f8hjiQXoaU3/8t/LxRkdetFEyAlyeHxflG8+AqZtd+wqVy5vIwBu+ngPU8Lyc4UyFe9WJA9J+QuYnQlC3WOT5uYk0yBaRbC/yX/luRU8DikfFp2237i4hcTBxbRRM1/D09j5iSvspBKghM1v8bHPIQTogJeglm8B9f8m2DFYAucxaw1+3JwxHLqOHzja9+lG1nQ6Ertq7JaNpWDwN60GbikUSck3STZNwsgbY402IusI4wWaL/cqMSJI4ZKugfXRahFh02hmXCT30CTYOFODf5K2DlguUvjvtYGPFFleUcSoe80Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wCdX0IjZqpx08GzdRymyZ9WnsIapNNXM0WqIhFD35Oo=;
 b=nVMgfR1r3saZNH+mohaLguarNx9peFWYVoKesZmObXskMx0XzO/TnzlAZL7dXg9PpS3ZfwM6xd9+r/li1yEpooY1SJsJlU61QaBykIuZ8MJB8wd+jtGRQOLQiU+GT1eRWprbxnSUWYmYHrKr+ljcc9RRIYzdtTw7GemhD24VjalZoFGL8OgvJUx6zVhte5Da6yttvYd61ct6o5Ieg3eHfeWCziVRNoRQGlkk+VenDZmspvcvskFKzpuOcCp4rJaOJj2GSnD38atOhuOrAwMRj9G4mLJlopfjzgSGrd7q/ZJEF/NH4zqVg4u6UGwxXf84BvcpFjItbEyKqlA02r2wCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wCdX0IjZqpx08GzdRymyZ9WnsIapNNXM0WqIhFD35Oo=;
 b=Tqdfeo+LOF2Lwq2kfekes39jLjnjgGzWYYfwQlH3rusMTgoS9smLfKD2Rt/jB/M1W2BztFLSOY+KksFl1YiXhamOyIoC3kFdIiKry4q/chRBmMIuY7ACyUMMeu+KjFpr2iWqWFe9Hcli6Fa7EXiSvc30fO8d+NHNsjM4zjzJa6E=
Received: from DB6PR07MB4277.eurprd07.prod.outlook.com (10.168.23.25) by
 DB6PR07MB4374.eurprd07.prod.outlook.com (10.168.19.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.8; Tue, 24 Dec 2019 13:20:03 +0000
Received: from DB6PR07MB4277.eurprd07.prod.outlook.com
 ([fe80::4105:4de6:e3fc:96ef]) by DB6PR07MB4277.eurprd07.prod.outlook.com
 ([fe80::4105:4de6:e3fc:96ef%5]) with mapi id 15.20.2581.007; Tue, 24 Dec 2019
 13:20:03 +0000
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "ying.xue@windriver.com" <ying.xue@windriver.com>
Thread-Topic: [net] tipc: fix wrong connect() return code
Thread-Index: AQHVujECQk52YVHbbEKDFk4DvnjMmqfJRRqg
Date: Tue, 24 Dec 2019 13:20:03 +0000
Message-ID: <DB6PR07MB427727CB2A2229B04FDD44029A290@DB6PR07MB4277.eurprd07.prod.outlook.com>
References: <20191224080551.28379-1-tuong.t.lien@dektech.com.au>
In-Reply-To: <20191224080551.28379-1-tuong.t.lien@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f9b38b3a-d829-4323-6db2-08d78873fca0
x-ms-traffictypediagnostic: DB6PR07MB4374:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <DB6PR07MB43741D8FBCDC1393A5DCF2EC9A290@DB6PR07MB4374.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2043;
x-forefront-prvs: 0261CCEEDF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(136003)(346002)(366004)(396003)(13464003)(199004)(189003)(76116006)(8936002)(71200400001)(66946007)(2906002)(5660300002)(33656002)(64756008)(66556008)(66476007)(66446008)(26005)(186003)(6506007)(53546011)(478600001)(81166006)(86362001)(81156014)(52536014)(8676002)(7696005)(9686003)(316002)(44832011)(55016002)(110136005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR07MB4374;
 H:DB6PR07MB4277.eurprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6D12Wnsmni8jNsrTYL1xVIXNe5P6Qafn8EFZNerObi6saE1xpqYuzywMBW8GVU3wIgv2z/FsqOG4NKerz9pU5Uwte0iAbfXb6JOd8h/lne2kZxghg4G4fqAdRSit7mEi2lM7s0Iazkt6e2y9YN7IOZatHSrsFFof7yBkXF61pVo3AklHysrhn/nSl9LBpmqCbPcU3CjdRdVPd9iPnIwplUN43ErnoOfOZO2JVJda50LLKmJ5raPJzLTcF+lTaminGaCWtoqJScme2vFq3iE9E8Lmmk5haDKtzLr2xsr2oiX6TVOzH45CZ8hYYTXScip2uFQEYhtUSvX05IvEgp/i7WcMLD4dVBXphyZ03R4KwAFL+j5giiLymkIbPAZolrXehJFT93Ky3ew1lftUfKTPSfkTKe44Y4KaAYPcMmyEcPTLDx29ItcE4CAwZ6p4wBfzWYioimtm8LL0lCdvDm4irW2lc2gLVvikKGdwjvCSQuvFkakTMjRVcc+Yfe3/Alie
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9b38b3a-d829-4323-6db2-08d78873fca0
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Dec 2019 13:20:03.4734 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cBsZjkq1dTU/2Qb3f+hzlqgwZJ/sB/XqkHmzR8US+afooVjiiHzgld207SMjXJrZoPf6TGjRdqCwxjnRH//c8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR07MB4374
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.6.58 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1ijk6c-00E7lB-Q6
Subject: Re: [tipc-discussion] [net] tipc: fix wrong connect() return code
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

Acked-by: Jon Maloy <jon.maloy@ericsson.com>

> -----Original Message-----
> From: Tuong Lien <tuong.t.lien@dektech.com.au>
> Sent: 24-Dec-19 03:06
> To: tipc-discussion@lists.sourceforge.net; Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com;
> ying.xue@windriver.com
> Subject: [net] tipc: fix wrong connect() return code
> 
> The current 'tipc_wait_for_connect()' function makes a loop and waits
> for the condition 'sk->sk_state != TIPC_CONNECTING' to conclude if the
> connecting has done. However, when the condition is met, it always
> returns '0' even in the case the connecting was actually failed (e.g.
> refused because the server socket has closed...) and the socket state
> was set to 'TIPC_DISCONNECTING'.
> This results in a wrong return code for the 'connect()' call from user,
> making it believe that the connection is established and goes ahead
> with more actions e.g. building & sending a message but then finally
> gets an unexpected result (e.g. '-EPIPE').
> 
> This commit fixes the issue by returning the corresponding error code
> if any when the wait process is waken up.
> 
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>  net/tipc/socket.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> index 8b1daf3634b0..2e5faf89ef80 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -2428,7 +2428,7 @@ static int tipc_wait_for_connect(struct socket *sock, long *timeo_p)
>  {
>  	DEFINE_WAIT_FUNC(wait, woken_wake_function);
>  	struct sock *sk = sock->sk;
> -	int done;
> +	int done = 0;
> 
>  	do {
>  		int err = sock_error(sk);
> @@ -2438,12 +2438,14 @@ static int tipc_wait_for_connect(struct socket *sock, long *timeo_p)
>  			return -ETIMEDOUT;
>  		if (signal_pending(current))
>  			return sock_intr_errno(*timeo_p);
> +		if (done)
> +			return 0;
> 
>  		add_wait_queue(sk_sleep(sk), &wait);
>  		done = sk_wait_event(sk, timeo_p,
>  				     sk->sk_state != TIPC_CONNECTING, &wait);
>  		remove_wait_queue(sk_sleep(sk), &wait);
> -	} while (!done);
> +	} while (1);
>  	return 0;
>  }
> 
> --
> 2.13.7


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
