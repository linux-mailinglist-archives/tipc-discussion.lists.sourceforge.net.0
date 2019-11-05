Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4D1EFE5B
	for <lists+tipc-discussion@lfdr.de>; Tue,  5 Nov 2019 14:28:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wz9XwjWNIqZkpViY/4MFW4qLRcmmaS4+h/Q+Oaz7KSQ=; b=FmpwPdJUa0+mYogRMeXw4hYbR
	jqrEGezPWY5XltOJevpAyodkKB+pk4h6rC1uBlRTiKzCk55leWtfMI2K8VCydDURNEwdYnvPNe4Pd
	rp+MEvgXGx9blhmpu9T7hrIPc4GOETw1HSPrJFw9PgPdLQgHxWrO6RB8sOeuI7sEFWPD4=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iRysL-0000SX-Pn; Tue, 05 Nov 2019 13:28:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iRysJ-0000SB-Mf
 for tipc-discussion@lists.sourceforge.net; Tue, 05 Nov 2019 13:27:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u0TElqH2qVYjlgk4wYN1tTTaFmd99pXrXPC9b7Q/9Eo=; b=dK9ssc5R+MS1iuuSaU0+k+dpoJ
 4ZQc6q1o/QzQO8G1Vshalp0PxFaZwIC1AjTQm1BFVb6LU91K6MD0aXMTq2+1LAmU8DvDkCUWQxgL0
 T1Prenfpa9kILuzm71NuAhHaYU6NkVWGsNsngyvAXLT+FZ45UZJSNC4Bjk61k2/jsFI8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=u0TElqH2qVYjlgk4wYN1tTTaFmd99pXrXPC9b7Q/9Eo=; b=YB5Uzei/hCGePazvPksb6iARc0
 90lM55KSEDJVtP5kyYC0yxsYAO9B9OsQ4LqHSLshZEL/i3zw4WZfWq5MAXHsk6cQ6nEzDibhy2086
 8cS2mVYxInIiCizZ61ebjMNkyyl9Tsc79LljMIPEVAPVR1KE38DACAy2mCqvfXgT5/6s=;
Received: from mail-eopbgr690040.outbound.protection.outlook.com
 ([40.107.69.40] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1iRysF-001FmC-T7
 for tipc-discussion@lists.sourceforge.net; Tue, 05 Nov 2019 13:27:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j6pzn53mNHi+WnUx3Agqb+7NqlnMOf/j6Q/2MXoj+kSi++vOWW1VIkjPHZJQIbxD48X/arXir5y8QIBMYzxV3Gm8l4EsVyfNv516i5kcMqGAm8eRQGWxwnzjbWT9Gv91KPamwrciT0w8qxl2wfsQxhtbGMiyGqYI/U/6NfwO7VGz5GgkoIUNECoVAQMlx/K30WeMlEReza53Ndgg9y7fv4Q+AlWrXaI97bfdwkmGVT1zE00FvlNNC99bKl7qji5zdOdDGf4BKSqPf9PQpmhf5GnPn7gVDDKSDrlQNmJeiLcnOyRczVOU11hvXIOyQOfm3AdTxJ70V5cnD2+Ug9oihg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u0TElqH2qVYjlgk4wYN1tTTaFmd99pXrXPC9b7Q/9Eo=;
 b=PU8AMBSdByp+j4oMKDwWz4y6h9B3U3SC6uRl5qXOYBP7xOGo9HmK5HOELbmKaz1AFGqnUWawYNSHHn6l99aDL4tI1SdK7Uw4I2EZFJdLo7LYGwz8HXOhPwPnvDx72IqeCjIZWA17+hEEgBMYWUYpJm5MMUz+z3g0CZk72YB7cnm9M4wLMbeEEyyDDvFxByPp8LfBo8OP+7e+KN8T10KC0mHzEpUWl0rdcgb+GT6oYqm6Q7Z63Kz1rHULdJRKk0ka7HSujAkdZaxdB0QQ9jKDqwEre0R3v7ry2WjsKJk3pf4VJpTCnHLu2cU3KKa94VwA1tWybojNHASQ1az5Qnb42Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u0TElqH2qVYjlgk4wYN1tTTaFmd99pXrXPC9b7Q/9Eo=;
 b=U5kbhJfR7kAMXTpFkzMkadD+Niefsi0QaPKH7IPJb95FrHb0L0XbOJHBM9K3xs/WLHrgIdHFzkuzhC9QBIZ/ebaxUzyrPxt4ISXop0cM6HT0PP00ip9f28IPNBqFZInNaeqDMDea53cE77g8ltuBJ1hCvltnPWy+FjbS/Eu/8z4=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3639.namprd15.prod.outlook.com (10.255.155.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Tue, 5 Nov 2019 13:11:58 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63%7]) with mapi id 15.20.2430.020; Tue, 5 Nov 2019
 13:11:58 +0000
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "ying.xue@windriver.com"
 <ying.xue@windriver.com>
Thread-Topic: [net-next] tipc: reduce sensitive to retransmit failures
Thread-Index: AQHVjushO+krKjOBAkOJ/GaRWbK1Zad8lwoQ
Date: Tue, 5 Nov 2019 13:11:58 +0000
Message-ID: <CH2PR15MB3575CC7B14B13FE0486BC2EC9A7E0@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20191030062556.18125-1-hoang.h.le@dektech.com.au>
In-Reply-To: <20191030062556.18125-1-hoang.h.le@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1474c1ac-0779-45f5-083d-08d761f1bd3d
x-ms-traffictypediagnostic: CH2PR15MB3639:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB36391480CF508860EB8394259A7E0@CH2PR15MB3639.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0212BDE3BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(136003)(39860400002)(366004)(396003)(199004)(189003)(13464003)(81156014)(81166006)(9686003)(33656002)(446003)(99286004)(11346002)(486006)(14454004)(25786009)(186003)(74316002)(76176011)(316002)(7696005)(305945005)(102836004)(6506007)(53546011)(476003)(44832011)(26005)(8936002)(8676002)(7736002)(3846002)(229853002)(5660300002)(52536014)(71200400001)(71190400001)(86362001)(6116002)(110136005)(2201001)(256004)(14444005)(478600001)(6436002)(2906002)(66066001)(55016002)(2501003)(64756008)(6246003)(66946007)(76116006)(66476007)(66446008)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3639;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nIHRbkONbhGxmCePBGM3KGVhVeEEfxuwoIZwPb+fiWzoTxSOJf/6h0FvAPloHBK4k33/u1Gv/1JaynhKTjzYNWN5gse/LiDldBblizFnczIy4u5waUxTSrcOUHNVF3wy8Onzbh9FDpHoAWe/6x3tqYSeR9evkliCOPchtzsBNQgpexks9H2hxUmmLS2KTbECZCHKJ0CMgDvf1VYnUEojFR9guhQfTU1hbOBRYik2s0oW40Z/isEcv4aUHOSPWFQAJmZHEXFmcONZ3vjCbQkBA+/kG8XnriguO5MFfTA85NPJ22x2Ho9+MeOHVA0nQEMZ1jKvBxBiM+d3dcopyb3Pyb95fltNaqWhMIXlrZGBYgxW0UU3MVtPkyBA4f34A8TkhAj/r9X03dysIIiSOtqmcfm6hmSQ+YOgRJ8g8R3o2CSyZmpAUT5is4TuoiQUaoYZ
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1474c1ac-0779-45f5-083d-08d761f1bd3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2019 13:11:58.3132 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x/VnPWluryFbLaYVRnPLoMULGJX/PhJ9GxujW/8zFblHAdBpHR6qJnUBQVabEm3JSMRz9y83EmCQ2xCPsRx9Cg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3639
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.69.40 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iRysF-001FmC-T7
Subject: Re: [tipc-discussion] [net-next] tipc: reduce sensitive to
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

Acked. But you *must* use the monitor functionality for any cluster > 100. Otherwise this is never going to work.

BR
///jon


> -----Original Message-----
> From: Hoang Le <hoang.h.le@dektech.com.au>
> Sent: 30-Oct-19 02:26
> To: Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com; tipc-discussion@lists.sourceforge.net;
> ying.xue@windriver.com
> Subject: [net-next] tipc: reduce sensitive to retransmit failures
> 
> With huge cluster (e.g >200nodes), the amount of that flow:
> gap -> retransmit packet -> acked will take time in case of STATE_MSG
> dropped/delayed because a lot of traffic. This lead to 1.5 sec tolerance
> value criteria made link easy failure around 2nd, 3rd of failed
> retransmission attempts.
> 
> Instead of re-introduced criteria of 99 failed retransmissions to fix the
> issue, we increase failure detection timer to ten times tolerance value.
> 
> Fixes: 77cf8edbc0e7 ("tipc: simplify stale link failure criteria")
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>  net/tipc/link.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/tipc/link.c b/net/tipc/link.c
> index 7d7a66178607..9f524c325c0d 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -1084,7 +1084,7 @@ static bool link_retransmit_failure(struct tipc_link *l, struct tipc_link *r,
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
