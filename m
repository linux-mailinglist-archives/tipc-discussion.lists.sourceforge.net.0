Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A27C328C6FD
	for <lists+tipc-discussion@lfdr.de>; Tue, 13 Oct 2020 04:01:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kS9cc-0000uJ-2X; Tue, 13 Oct 2020 02:01:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kS9ca-0000tv-EI
 for tipc-discussion@lists.sourceforge.net; Tue, 13 Oct 2020 02:01:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I4YcbP8nBJ3lIPMVDVx+0/gzwc4i6zoK/KcYqSDwz0g=; b=CawTMMcQZMW3cWkH41ojQS0wv8
 2MVitZB1vAn9vhiLCtcx55rbe/Sj57qD2CywFqSz1P1ptZiR9hVkG2WDMSCMmftvEml/cpddHXAxv
 ePymdyTyxYrCICm+e+ov5yTj9m3pQcucOq0Xwk92MMhkdLDyHmXZc0ReAKioITdLWsLg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=I4YcbP8nBJ3lIPMVDVx+0/gzwc4i6zoK/KcYqSDwz0g=; b=IuxOory7q2Lvkre6oKW73F7W/X
 qSTwgdCPjaaZAsjyfGtwm0T/4TYfYzlGlE9fRvMUo6wqAuPIBPZISbiSmfxUrvNMJXoFCO6r0AykL
 0cuIyujE0Ix/lD5r2w3YEUwrTAvJOJuqlsz5YKGxy6J+FkQpDU7NAgjBL7y4vluc7OZ0=;
Received: from mail-eopbgr70092.outbound.protection.outlook.com ([40.107.7.92]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kS9cT-0088Zn-BA
 for tipc-discussion@lists.sourceforge.net; Tue, 13 Oct 2020 02:01:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EB2px/lvkyuYzDQ6lKqIp0ymzvNHSGdXmcUyDpNdtfviya5/iqG0F+BE3s9HSvHHzul6WjVAQX5Yqs3heZ/MCbAgXACOu6S4nGevC8NkqCK4YWLTy4GgH2ncu6gSeB1xHCAzaiYqSiZF2zpt603IjdvUBg49C4hgwVEYNZ4YvQaOKFSQ/mqA6wKyHibU/cpqkimnnsFKRz3pXlamIS2Z6HjtluIEClOWiPZtxIWXfR2EKlKLuYC8rEkGxatyxNvWN/9mCkfRjQpJto52VYGoHRPHdoBlitWEr8U9xb2TzI4T/cjOPpCdT7HHwY8uEFmIqzVhKHqxj4PvSoSkDlaX3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I4YcbP8nBJ3lIPMVDVx+0/gzwc4i6zoK/KcYqSDwz0g=;
 b=P5mXNuxlCYLXA4llsc0gVi2RaDVldClRTQpYJmKAxwYyDA2eYF/XT3kgdIoCh3l4j/tZr7Da0dQjSHxjfbty5ykRXF3gbp0UWV/AQBnyurWEJhEWqtAvEpbY6smmpj/PhMvOmtKkTfC96Hrh28txJN+L5A4Dvxl+Zg+tCrtVV2CbyvDrYe2dMkdAmkcv1VsjOAU67fziQEn0F2UZuWgVUOYPaZmoLS9bVlsToEiCY9IU0CO1bGqncu1kcWAbAttsRVE7pPx02SZMYr8yWYiqDv8oZ0bPrPQlLHjZXg5BElYc01a68ntEql6W1mq6U6BXx88z9z2yVS7gvk3TUmchXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I4YcbP8nBJ3lIPMVDVx+0/gzwc4i6zoK/KcYqSDwz0g=;
 b=fbUwsyKND+/4vuM9EkBhtDQroX8gRL5lD77A0r0g29R/la5H8ixlye4N3OyvH7My9/wCPQryle1ztdlK/gJRXpty0ZgO0leyZodW/4ERhuAZYuItY7lsTbD2aqfXH7kLaCA4xDP3nnR3rrXXLDZNN8KDAGFjUkIAfMQ6qsSPDYM=
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR0501MB2287.eurprd05.prod.outlook.com (2603:10a6:800:28::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.22; Tue, 13 Oct
 2020 02:00:41 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::2459:8421:b4ec:dcb4]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::2459:8421:b4ec:dcb4%6]) with mapi id 15.20.3455.029; Tue, 13 Oct 2020
 02:00:41 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: Jon Maloy <jmaloy@redhat.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "ying.xue@windriver.com" <ying.xue@windriver.com>
Thread-Topic: [net] tipc: fix incorrect setting window for bcast link
Thread-Index: AQHWl5RZfkR7Bo9Prkmgt+kOa04EL6mUspqAgAAm/aA=
Date: Tue, 13 Oct 2020 02:00:41 +0000
Message-ID: <VI1PR05MB4605FDC0CB3CAD9B3EE454D2F1040@VI1PR05MB4605.eurprd05.prod.outlook.com>
References: <20201001014351.8169-1-hoang.h.le@dektech.com.au>
 <decfdd59-c2a9-ec2f-556c-64ab1ded6ec5@redhat.com>
In-Reply-To: <decfdd59-c2a9-ec2f-556c-64ab1ded6ec5@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c18db3ed-5281-4bea-409f-08d86f1bca0b
x-ms-traffictypediagnostic: VI1PR0501MB2287:
x-microsoft-antispam-prvs: <VI1PR0501MB2287B065F4E857868F70DF5AF1040@VI1PR0501MB2287.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5Infy7xAX1dqdeVc1L7c0Gymc0h2K9lDU9knP1TCMSbbvOCeJMarCAbup+4ekr5NgwRFOKY6QQpDivVX6xmpoM5CDD6xiEZlonRasB7vxW7TGi3hgIbHB03X2cwiXQp+QsoPAd43qINOXG8/Dc+vtV0uONAtLLHOyKZ4qTXjvn/T7y7Tr6q/Ga8z5lF0bzhVJMQLVCGdDWlRsrSSKM+B5hA0a5c3yxdJA4e35qhVgjbkV2GY/+t8l5gbypz1zwRvPVT30XCGZQirZ+PI0IM6IcwXPGS0CztNfTHZLwUbmp0Tpx2D2/CGQpcZyxHmxt1cS4G0zVYhhMevujkFj/OgoQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(396003)(136003)(346002)(39830400003)(366004)(6506007)(7696005)(26005)(53546011)(186003)(66556008)(66946007)(64756008)(9686003)(66476007)(76116006)(66446008)(5660300002)(316002)(52536014)(33656002)(2906002)(110136005)(71200400001)(8676002)(83380400001)(55016002)(8936002)(86362001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: nHnfXedn6SbMfwyWIqbrvQYeZEKRmnNJ+nCGi7rB1rSY8wrDWhq8DkRJ1hFv8r5HKuEU99dliOYpHQ0+cWgteDZSjH01H8UrMM9q/SH5wU+ClGV8PKGwEyCCVmXM4cYwkJ21HMSbNjHg42TZJTmn4yK/PhXKYfQn0zYIR+AoOgz7E1LCrgY2O1db+f2helgo+1dQdbru9W2M8742GOdFuU3GqQPztyGmIB8J+AUOwX+6PCddc1lalMtvgCFwEWv61A1BEoWYfIp4WpkbGv1Q0in6WmOiifZOcHYCFvF1t5lltmXah9GRHouExncgbvMjvt52cVPKSS327B0rxdA57+5aFpKXW5T9Bh+Fbot1TSxoL0O9tSdR25FiPfoycsjr6gqbqxwic2Wq32SeSJFblOjegEI2XS1uFvp3nJZbGnK4YDlm+RTHwnpugTVKrLAQuunAI4c63nsmMg0krHIuhrPqhNB3DoUa7mADVOnoFBfkbvHvfIA+9p5rQSgewhz0jGK4EafT0yuW0L8kWJ20L2jbBhFkAej9wbgRyZU9F+un+ahyHyQDjV9d8P7FdgNCBE5aHbQZXRqJ9UVBWYpauWEr1Y+3C54mc7tH8hy2niSJ/na8jNEh89jNrH9CsLZjau2I7dASzHHshONmy58P3Q==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c18db3ed-5281-4bea-409f-08d86f1bca0b
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2020 02:00:41.4951 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VPvLRg5/p/jawshFYIZfVQw/Gj/p2bR/M148PCL0ihXIey4AXViqrg8A1fme8yzwaJVaYsebFkBTfRAcyTgp8Ctr3V6Iu8pO7oH3aaExgz4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0501MB2287
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: donjonn.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.92 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kS9cT-0088Zn-BA
Subject: Re: [tipc-discussion] [net] tipc: fix incorrect setting window for
 bcast link
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
> From: Jon Maloy <jmaloy@redhat.com>
> Sent: Tuesday, October 13, 2020 6:39 AM
> To: Hoang Huu Le <hoang.h.le@dektech.com.au>; tipc-discussion@lists.sourceforge.net; maloy@donjonn.com;
> ying.xue@windriver.com
> Subject: Re: [net] tipc: fix incorrect setting window for bcast link
> 
> Hi Hoang,
> I apologize for not paying enough attention to this problem until now.
> See below.
> 
> 
> On 9/30/20 9:43 PM, Hoang Huu Le wrote:
> > In commit 16ad3f4022bb
> > ("tipc: introduce variable window congestion control"), we applied
> > the Reno algorithm to select window size from minimum window to the
> > configured maximum window for unicast link.
> >
> > However, when setting window variable we do not specific to unicast link.
> > This lead to the window for broadcast link had effect as unexpect value
> > (i.e the window size is constantly 32).
> >
> > We fix this by updating the window for broadcast as its configuration.
> >
> > Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
> > ---
> >   net/tipc/bcast.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
> > index 940d176e0e87..abac9443b4d9 100644
> > --- a/net/tipc/bcast.c
> > +++ b/net/tipc/bcast.c
> > @@ -585,7 +585,7 @@ static int tipc_bc_link_set_queue_limits(struct net *net, u32 max_win)
> >   	if (max_win > TIPC_MAX_LINK_WIN)
> >   		return -EINVAL;
> >   	tipc_bcast_lock(net);
> > -	tipc_link_set_queue_limits(l, BCLINK_WIN_MIN, max_win);
> > +	tipc_link_set_queue_limits(l, max_win, max_win);
> I think this is dangerous. The broadcast link puts a much higher stress
> on the switch, and the risk of massive packet loss with ditto
> retransmissions is very high.
> A safer bet to stay with a fix window of 50 for now, to solve the
> problem you have at sites, and then you can possibly experiment with a
> variable window later.
So, should we return to 'not support' when user changes the window for broadcast link. Or just silent ignore the setting?

> If it gives significant higher throughput it might be worthwhile trying,
> but I am pretty sure that e.g. the base for calculating ssthresh (300)
> is too big.
> 
> ///jon
> >   	tipc_bcast_unlock(net);
> >   	return 0;
> >   }


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
