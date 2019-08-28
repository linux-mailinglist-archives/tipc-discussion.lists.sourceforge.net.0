Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F1AA04F8
	for <lists+tipc-discussion@lfdr.de>; Wed, 28 Aug 2019 16:29:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1i2ywR-0006KS-1a; Wed, 28 Aug 2019 14:28:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1i2ywQ-0006KF-BV
 for tipc-discussion@lists.sourceforge.net; Wed, 28 Aug 2019 14:28:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nj1iO/NoskvKC4piu/lwhPtL0zdmETXaeb9HbfNMyno=; b=C0/amCCXqYnZTUVzYr5C8vGyDJ
 vZdlykfjgPeG2KuVOeoIm+UHaa+LEfJLFqW6BvDKDRQw5snkB980WFphqW9q7KYtAyU1EGGceB/fd
 IuRHWamSt7RwsAY/B0S8t2sQj70SE3DeoyzfAWGuS37mUStnjx19/zDNOlD2w44ViwRo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nj1iO/NoskvKC4piu/lwhPtL0zdmETXaeb9HbfNMyno=; b=aVW8Yt7rhFGYgtktQuQibcWr11
 KknvC66xlnIGiOpbZdSwZzvoeP9by3tzwf/J+NhiFF6CZ58zD+H7SsV24Wyr7RA6idCWUzhKbEpyD
 UnAn0zcvDRimNeVBBOxTkSkVaSthSYkGlmfIOBd9hf/iMppIEV754kY/Neg11u1gVR5o=;
Received: from mail-eopbgr690075.outbound.protection.outlook.com
 ([40.107.69.75] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.90_1)
 id 1i2ywL-000zhe-5e
 for tipc-discussion@lists.sourceforge.net; Wed, 28 Aug 2019 14:28:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TP+ObX1GmBsUKGyJXzDHp3zoSOb45kBqcQEPKmYYeojiaBiPv6di/hcGg1vxFZkbkZG0gLxhuEDGVt2dERB+vnfT6jcP2+/pykw+RM545FnyGOjLiiD99q2YHtcaSXoV292yjp4MVL5bh/csgNkTIBhJPKaG5I0KP+stx9+J1zPLwi3LzymZpBqmzSn08kYcGhb8WYVBDPd3cCTKeje/v9BhcGj6DYPEiv2bz7Aq6H2te3xEgE9WUGU/tPiPyLgk9w/cXt6QZr4xWdHcxTGJjdsAFnOX5dM7BueTmUPsamSt2R5Ilj8IBbhECcP7pb4dLKHhiO7YOyFwrECpmWAhfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nj1iO/NoskvKC4piu/lwhPtL0zdmETXaeb9HbfNMyno=;
 b=RXKVi8kfKsILBAPNGabTu6HQfMboAJMeIqMqhLcwPELRChRglir0CIU8zD/tVA78ULFnv2vDNS2zt0V1M6lsKsUUhSSoPEP8s9bNVKz8RKnPtvUQOIB2KuJJmyQNtOtF86SiAUIrX6PfFI3V01VSEgoKkGDd7NEGCx1dPia6kHNzKJn39N/SE3d+aQMhQbUACPB7xQQdDscjM2QeavBOEtCwHfZ6W100q6ODzyBjVFyIm2xpTSxyPJlf5pgiJo8mWZFmdYMerjGjoYs/DN6FNtuRHJ5tm4p8ciXK2yueXra9jpaC4vCvgeOoOQ0JQB7cP2TASebPKo4fR4YBvEeYcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nj1iO/NoskvKC4piu/lwhPtL0zdmETXaeb9HbfNMyno=;
 b=VSpXpJMZTWEGTOT3802tL0vAaAmGo5EJxjXdd5cGX8yXN7TMXCyLemaSHuZYX7CpWFQHApCPGjtQ6AbXSS/c2uAMBWuVMcAlRNJu4An5emWi2yhAIUhbvulkSg6WdOpfUiH/Eife7/iPxI+0RvgJ07Y+rTtMjIhLRolebHd6tUM=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.19; Wed, 28 Aug 2019 14:28:40 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::49b5:cc04:ec33:c7c2]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::49b5:cc04:ec33:c7c2%7]) with mapi id 15.20.2199.021; Wed, 28 Aug 2019
 14:28:40 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "ying.xue@windriver.com" <ying.xue@windriver.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [PATCH RFC] tipc: improve bundle algorithm
Thread-Index: AQHVXAPkylufcxZCG0OkwsnQ1/4cnKcQnvew
Date: Wed, 28 Aug 2019 14:28:39 +0000
Message-ID: <CH2PR15MB357545567CDB5599A33BCFF69AA30@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20190826114558.12881-1-tuong.t.lien@dektech.com.au>
In-Reply-To: <20190826114558.12881-1-tuong.t.lien@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [192.75.88.130]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 45c7f670-ae3d-42ed-29b8-08d72bc40570
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2PR15MB3575; 
x-ms-traffictypediagnostic: CH2PR15MB3575:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB3575F494DAF7232C0998CFCF9AA30@CH2PR15MB3575.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 014304E855
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(396003)(136003)(376002)(346002)(189003)(13464003)(199004)(51444003)(7696005)(71190400001)(81166006)(71200400001)(33656002)(86362001)(316002)(486006)(74316002)(81156014)(55016002)(25786009)(7736002)(3846002)(14454004)(53936002)(52536014)(6506007)(99286004)(5660300002)(11346002)(229853002)(476003)(6246003)(76176011)(2501003)(305945005)(44832011)(66066001)(9686003)(256004)(186003)(478600001)(8936002)(76116006)(110136005)(66556008)(66476007)(66946007)(6116002)(6436002)(26005)(66446008)(64756008)(8676002)(53546011)(2906002)(102836004)(2201001)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3575;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gWz0kwujoLa2WUKCZhvWFv6r/q6DPa+0zFR7AoK4ejk4Z6iFl1vCAmR4vAeIwq0PsBcHlUDoIzWt14b63JA7OECi9hCpTZvNk7udJhnGwLwBp28rrYotyDTnN6eJ1yv6kHndKWbXYe/F+LT5ixmVwtexT08HUOsp3KuKvPvTW9Zf0dGiYmkOgTSAeAWHJ6bJZIToA6aWYtauByZTUqTiu20LAAiM/f2avYXIycGO+CsI9mbqvd9v9wTqZ3Yr9zndfxVh7R3aYOF/6JfUQb+uOPAqwLf9/309B8xDAwHIlpkpcgmRN+AB5aGiCmsDbOnGYsaWZmx0RwAx2+Y9Lx0uXC1qCE4omExYKABDvJbPCyQc0c2jNNm0V15BfCCkcLhG6xG6IgLB3yb8+aKNKOTYWOSNLdLOZvxTnV6k1qiE9fU=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45c7f670-ae3d-42ed-29b8-08d72bc40570
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2019 14:28:39.9876 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WPovsISJEfiN0fFdNA4qWU8aEmCT1hATevgDDnrm+gH9UPEcH3FK/ErGt7BMlAm9C4XP0+gn8facKTk//KcufQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3575
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.69.75 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1i2ywL-000zhe-5e
Subject: Re: [tipc-discussion] [PATCH RFC] tipc: improve bundle algorithm
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



> -----Original Message-----
> From: Tuong Lien <tuong.t.lien@dektech.com.au>
> Sent: 26-Aug-19 07:46
> To: Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com;
> ying.xue@windriver.com; tipc-discussion@lists.sourceforge.net
> Subject: [PATCH RFC] tipc: improve bundle algorithm
> 
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>  net/tipc/link.c | 29 ++++++++++++++++++-----------  net/tipc/msg.c  |  4 ++--
>  2 files changed, 20 insertions(+), 13 deletions(-)


[...]

> @@ -544,7 +544,7 @@ bool tipc_msg_make_bundle(struct sk_buff **skb,
> struct tipc_msg *msg,
>  	tipc_msg_init(msg_prevnode(msg), bmsg, MSG_BUNDLER, 0,
>  		      INT_H_SIZE, dnode);
>  	if (msg_isdata(msg))
> -		msg_set_importance(bmsg, TIPC_CRITICAL_IMPORTANCE);
> +		msg_set_importance(bmsg, msg_importance(msg));
>  	else
>  		msg_set_importance(bmsg, TIPC_SYSTEM_IMPORTANCE);

The if-clause is not necessary any more. You can assign the importance of the inner message directly to the bundle.
You can do that here, or inside the "tipc_make_bundle" branch of tipc_link_xmit().
Otherwise I think this is a smart, although not very elegant, solution to our problem.
Maybe you could steal some of the log text from my first suggestion to this patch? I think that describes the problem well.

Acked-by: Jon

///jon


>  	msg_set_seqno(bmsg, msg_seqno(msg));
> --
> 2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
