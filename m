Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 255A8F2069
	for <lists+tipc-discussion@lfdr.de>; Wed,  6 Nov 2019 22:07:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CcJAGInzcwrzZk3NpCcFukk5Dyhh0IBmIF8Yhx9SIk8=; b=l7sdeq+xzy1Ne8NUrown1M2sR
	GextbXYTeyijY9WVf7jqRxVtmgelm6DxwvnM8Qg/0OTtHmU7aQDy+fV3MurEhQl1uc/ERp5gQ/hlU
	DjwUQF+DCkbTWuRsc0pa8S5/MX6Eg+WA9Yf2K2Xn9LlQhOyVnzCelE2L/v+X7yEvURjMw=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iSSWe-0006A0-9H; Wed, 06 Nov 2019 21:07:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iSSWa-00069m-DQ
 for tipc-discussion@lists.sourceforge.net; Wed, 06 Nov 2019 21:07:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HjpItke5hNXPdCuYub3XnU5gdeIjowjjU/Zrij14yTU=; b=FzDkPmr51WR6JqTmg30yYMubp9
 O2FxzbPxoYIs7w9LjdRLHxupHhEXxDOtCOxn9J2xLQgRqpd5YA8eatlvn5MdwaqWQLvQA6OaY6Qk5
 Utf6SarqT+W9yxag7T3p2ZrGIih/NRKCsbS7FyqZokyE1b3V6BpIzXVzuQz9MiVQYb/M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HjpItke5hNXPdCuYub3XnU5gdeIjowjjU/Zrij14yTU=; b=R4T5xdLzyg/81JInqQu3JPMeIk
 pY+19XPB5FKI6Y8JISHztjVBRqIctCgZ/kr0qPMGUPJUQN0gz2Z5tvkvGD8a4YGTx7pSOMBVBLdjT
 lHUdBcwuwjNR3mt0AA1PNZetrDmEBUUChZ3ICjXVvrrMYip28LpIKXAhxYlJaonhHf5w=;
Received: from mail-eopbgr820082.outbound.protection.outlook.com
 ([40.107.82.82] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1iSSWV-003fqI-Nw
 for tipc-discussion@lists.sourceforge.net; Wed, 06 Nov 2019 21:07:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nupA1L3bCslZUBIuV3jBu6kOhvqV4VtsIdy3KuGdcJWmzvfCuSszNayyO3C8iQoElbTV3jMcV4NFEtcb7nCQWcRnT6FhN7f3JzMOKb+DrRco+y47AFSNycEnYQaIJgKsUZuC8JTQUIu0V85tDFgpIKesQQZdZOPmPddjzSiM1+zPOOx9ck7nLlI4PohcggUAZSN/Lzt29FXXzlMOJF7/ETRu/LRaI6g7sbI95uJcVaSP1bmHCKjW5mMfWYNzH+9XsgDmDG+D0ppmXAuZz50oFfLs2/tuEJ04CSMIxqMJzJtnl3gL6m1tyEzmIyOmFnv872P0MWfKSnnaOUzTYgjYtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HjpItke5hNXPdCuYub3XnU5gdeIjowjjU/Zrij14yTU=;
 b=RGbt40lU6+qh88PlS4MrALjTMnduAxk6KhO2eFN0DKTM0kJlVle/6mAn59TkVd1Gggx+5NZorbXMvBiTuT/AoOSgPZdLRGsrkZ8BVXA0u9blulJeexuQ2Lm8ncOU+Q21uO/vONu5YTStWxaHs4hYzNZJHDT4TKfwvPYxTTl0ZXLk0z2v0dQSyQjrA/dwIqqTs9g1ctgUx2wBDJZvUss8ZEMs6z1YCMLW9u2MJqN3Sgd0TmwKTE/al1b/4CN/O3cIrtyuFuev5KCA65Lee+APnDYkyE3EyUBXeZlbxceaEyL8CfcW9U5NF1g6HUEZNbXSc7wclfW84PeGDLy+ATHptw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HjpItke5hNXPdCuYub3XnU5gdeIjowjjU/Zrij14yTU=;
 b=WPomZ5oxU2Ik5l19ZsdXh67uQ2zEsK909EkcJVCDkkRgR3B3g1IVlBQTn98OwgS9N1EGQ68arIczUecYb2GxIRrxGiPZhTj4sS1MKrrGpxKPXVtOBvEjnPZmiWNJ5Bd6gIOx0iAArzKkmFyxzIHZNBy18jZqmakAl1DDj3TzLQE=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3557.namprd15.prod.outlook.com (52.132.228.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.22; Wed, 6 Nov 2019 21:07:20 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63%7]) with mapi id 15.20.2430.020; Wed, 6 Nov 2019
 21:07:20 +0000
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [net-next 2/2] tipc: reduce sensitive to retransmit failures
Thread-Index: AQHVlGsm8c7lafzxrkqGt8MKwzbf66d+o3Ow
Date: Wed, 6 Nov 2019 21:07:20 +0000
Message-ID: <CH2PR15MB35759E1A42897371181250289A790@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20191106062610.12039-1-hoang.h.le@dektech.com.au>
 <20191106062610.12039-2-hoang.h.le@dektech.com.au>
In-Reply-To: <20191106062610.12039-2-hoang.h.le@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [192.75.88.130]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f1194ce7-1bf0-4c4a-e92c-08d762fd4fe3
x-ms-traffictypediagnostic: CH2PR15MB3557:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB35576AE2B3C6A321B3C85E339A790@CH2PR15MB3557.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 02135EB356
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(366004)(136003)(39860400002)(376002)(13464003)(199004)(189003)(86362001)(8936002)(52536014)(8676002)(5660300002)(66066001)(305945005)(44832011)(6116002)(3846002)(2501003)(71200400001)(110136005)(66446008)(14454004)(316002)(64756008)(81166006)(76116006)(229853002)(66476007)(71190400001)(66946007)(66556008)(256004)(2201001)(33656002)(14444005)(446003)(6436002)(186003)(81156014)(486006)(6246003)(99286004)(11346002)(476003)(6506007)(2906002)(76176011)(53546011)(74316002)(25786009)(7696005)(26005)(55016002)(7736002)(102836004)(478600001)(9686003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3557;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zc6jfVQ1I6MLOfA8z/L/qNChad7oeEqkxCfFMfcPkEFZLQvYsc2zUBimuvR/j3LOPNHbajjKRWpaTpqyBAtEuEIQdm+mEg6+c8NSRRtl4OyKh3yco4YFYw/W3DqkZKuTU5rIe46gK4GCO236Pbgrize+/5iqRhZrBLCDUS/6di7USCLIXkKsu5gUvZ2HHVUnGKkQodUHKHWz1uZE8bqLsHmmtyalNMx6iE/QiT5gaq1QSXw3Ze/Uw25paYmOQLht0wsqfYPm6tbpKy4PeDmCx/gvBgABZGNm+gXpJ86dF1k0M4CkpYbgUmtvPQejcQE1FXDx/S65RArR5RON5HDuie5DH+epOC3DjFFU9/9cXqJFYXBEaQZ4cvWZFxp9ewrRRiHaO7v66NOgmeg2RwLntRHeUcWMKNkLfKG6m56Xy+L34NdOxYy+y5lTPnhj7Mke
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1194ce7-1bf0-4c4a-e92c-08d762fd4fe3
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2019 21:07:20.1499 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z6Lh4E4R0CJZzBtH2koXgrZCP/X/M4fgP9pkt7tipF1tlSLgmqvDZrSnnJOA/FkfL5xe0Jk6IPJ+Vc6uRDCgbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3557
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.82.82 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iSSWV-003fqI-Nw
Subject: Re: [tipc-discussion] [net-next 2/2] tipc: reduce sensitive to
 retransmit failures
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

Acked-by: Jon

> -----Original Message-----
> From: Hoang Le <hoang.h.le@dektech.com.au>
> Sent: 6-Nov-19 01:26
> To: Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com; netdev@vger.kernel.org; tipc-
> discussion@lists.sourceforge.net
> Subject: [net-next 2/2] tipc: reduce sensitive to retransmit failures
> 
> With huge cluster (e.g >200nodes), the amount of that flow:
> gap -> retransmit packet -> acked will take time in case of STATE_MSG
> dropped/delayed because a lot of traffic. This lead to 1.5 sec tolerance
> value criteria made link easy failure around 2nd, 3rd of failed
> retransmission attempts.
> 
> Instead of re-introduced criteria of 99 faled retransmissions to fix the
> issue, we increase failure detection timer to ten times tolerance value.
> 
> Fixes: 77cf8edbc0e7 ("tipc: simplify stale link failure criteria")
> Acked-by: Jon Maloy <jon.maloy@ericsson.com>
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>  net/tipc/link.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/tipc/link.c b/net/tipc/link.c
> index 038861bad72b..2aed7a958a8c 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -1087,7 +1087,7 @@ static bool link_retransmit_failure(struct tipc_link *l, struct tipc_link *r,
>  		return false;
> 
>  	if (!time_after(jiffies, TIPC_SKB_CB(skb)->retr_stamp +
> -			msecs_to_jiffies(r->tolerance)))
> +			msecs_to_jiffies(r->tolerance * 10)))
>  		return false;
> 
>  	hdr = buf_msg(skb);
> --
> 2.20.1


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
