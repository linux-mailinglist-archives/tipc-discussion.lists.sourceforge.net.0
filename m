Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B6154280C66
	for <lists+tipc-discussion@lfdr.de>; Fri,  2 Oct 2020 05:01:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kOBJT-0002sR-R7; Fri, 02 Oct 2020 03:00:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kOBJS-0002sF-4g
 for tipc-discussion@lists.sourceforge.net; Fri, 02 Oct 2020 03:00:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VpUVZfZv3kLYeusPxvj+xIQBaA/D0QOqrIc2OntnzlM=; b=eCfA2cGmGw1LdlqqT4nVQYKiqN
 NHybigpzD1roKC/VPwlanbruWKNLFLaxXwUwqrS7OYuiF5mW726yCLVKxRaIpRzXxo8lrDQc2hvsc
 yKHC1DVNbB5BGeLSm4rTq9lQ2js/srnJNgUmm4kq+xcGIZy6igeglcBWEdqfDMRHI9ho=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VpUVZfZv3kLYeusPxvj+xIQBaA/D0QOqrIc2OntnzlM=; b=nKRxFe4aeacGR9FXphYAel7ncD
 pYK3W1q2ULzIJY+RkFbymc2coS6UBBc7vm/N8lAck9FfFxf/4JJulmsInAkZF+QJOBCjJw/Sqfghh
 k0uMhfd2QeVF7FQtNsXcmskpCkpRy1lKCkyeCwnhyVuaGrdcdwcmTnvV9dYQkKXc/k0A=;
Received: from mail-eopbgr80131.outbound.protection.outlook.com
 ([40.107.8.131] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kOBJJ-00Gq4B-8Z
 for tipc-discussion@lists.sourceforge.net; Fri, 02 Oct 2020 03:00:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MMH2r7JSgCsFsNUEfT7Yg92xdbGxJT/e+FiZNzlNyhRWLl+syfjey820+unisJzA7SawOXx3Cem24+cyxxtmhHjlFbGfdVusqJCys8NivlFQXFddZEWYBQZvmBvvBR6xANw36yvz6aJsvyXV7gZYTlLAPRqxfTmlNgF5HDrEvUoKbDyXsJ8891QhEj5NQypdO56wH53k9KZz3/9yrpkz9k+fB+WyeCI82p1Nn3zB8hrptXdy2xT+jMDXtGzw6k7J2PEWFTPu4uK4G5yWEP7PD5uegWHoU58x7rDRiyjdMXIiIDXIsExM6kg6gYDpT3axMeSkF7apfJTed8vvx7W6eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VpUVZfZv3kLYeusPxvj+xIQBaA/D0QOqrIc2OntnzlM=;
 b=J69NO7AeHfjriL754CSP/lmDUe5NaULzDlOgCniXXBWG5a7W6hmEhsA9VRuFkmRgB8JBSv4mbcAiim9rqXp3cneNfchrNJD4cFplaf4c9CwdM+CPRy6w2jfhwk575UEtQCb1eUUCGhPvrzT9zMpLWq34+yCWe6XMtrLcplBMe9lHzQYQazQguvjUqxaTMbN7ddyLrzPlRC54XMB+ZjZlMv836jDRG7VFuW+PoueRBMHAtNiY2/fziGWNXKNQsHYx9ouSm9gjdghysmZlQEPRrUo7ia0CuCldxOtwqh+cFYgrAsiv+tFd+paFx5sGNywV7kut0QJa3BerFVVnhidl3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VpUVZfZv3kLYeusPxvj+xIQBaA/D0QOqrIc2OntnzlM=;
 b=h9D5vC7gZeUlF6zeMjX+7vX8psa+EvWAlSsYJ19Z+amlF7WL6IUHCMBRR4mc0jOrxsAagnOEBpQ5uD19IE5D/H4UR8iJ3v5tXQidrevOxqhhFfrJ7a8koXTcCoknHpz91jjn7mklkD1OPt2V3Q19xANkENy6g1WVA18jGwhX/4Q=
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB6702.eurprd05.prod.outlook.com (2603:10a6:800:136::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.35; Fri, 2 Oct
 2020 03:00:22 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::2459:8421:b4ec:dcb4]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::2459:8421:b4ec:dcb4%6]) with mapi id 15.20.3412.029; Fri, 2 Oct 2020
 03:00:22 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: Jon Maloy <jmaloy@redhat.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "ying.xue@windriver.com" <ying.xue@windriver.com>, Xin
 Long <lucien.xin@gmail.com>
Thread-Topic: [net] tipc: fix incorrect setting window for bcast link
Thread-Index: AQHWl5RZfkR7Bo9Prkmgt+kOa04EL6mDR42AgABJ8PA=
Date: Fri, 2 Oct 2020 03:00:22 +0000
Message-ID: <VI1PR05MB46053BE2B99511C14155BF23F1310@VI1PR05MB4605.eurprd05.prod.outlook.com>
References: <20201001014351.8169-1-hoang.h.le@dektech.com.au>
 <0f756df1-68c5-339f-ccc2-7a15401e7d91@redhat.com>
In-Reply-To: <0f756df1-68c5-339f-ccc2-7a15401e7d91@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e70282d1-8903-4ced-90a7-08d8667f4da1
x-ms-traffictypediagnostic: VI1PR05MB6702:
x-microsoft-antispam-prvs: <VI1PR05MB6702F4609A65FFB6D1FED4DEF1310@VI1PR05MB6702.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:849;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NxXCMZ4b4E9uC0nS6GRlv8KMijjSOIEnmCAm4JxqTheHCLLilG5eEitTwa/NY+2G+E17Cwq4FhrIKXWh3vP0UtHKbHJYHGHDcPXxe9nn8J2W8uk/1lNR6vztOGEAzWaaWRLrtJtQ26SnMxUsfF6rSrLtecGjuMhYxoDf9ergtuAITFWXrK/YRphujy4MURkBAQZd7qbRS1ko1WZw+KZSRApBO2N+3+6MPBULjU+1P1LvMRbpBulH5ehxSGiXdcdguS32fDi5pjyNC+kIPrBem4iAb8LVgJXqhZUGPkZJIJ6l99FOGZdv2eI1tO0Mjuzwczy5jlrPlszo7oFxeSI5jA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(39840400004)(136003)(346002)(376002)(396003)(8676002)(8936002)(76116006)(66446008)(64756008)(66946007)(52536014)(33656002)(2906002)(71200400001)(55016002)(9686003)(110136005)(53546011)(6506007)(83380400001)(5660300002)(316002)(86362001)(7696005)(478600001)(66556008)(66476007)(186003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: XV0voNhDjFBT3rFbh+l1qzrzCkAm4HmC07mMaRkHf6QuyDTonsKBDNHNJvRcgS2gz1Di7phL+t73mdxsxmVSF+vegqzm9HwBqzmzhYNJVxqV6gK16HyEMYj7eAgQVyv8YWDQN5ErcFCR3ruVxOUfGQH/wGf0ZVWpHck2Ox/LEyqck0DSWkQxHCtd8KyztnxdlBPFKBletffU1TNtT6t2LifjYm9u4Www+bwz9ws9b35JjXY0eOGmmJEwVkqEYlxNV1FqQmegYZgTdo5svV38/5ErBitXs9saTtRgTI9Ssoff2DhGy3K9HJ9QCSxFhY3fHxCQR1zSwS8EDWo0VMww9qG81FIqg0OySO3xhhIMtq7sL2QlfxTn7y7gIfuu8+rB5yl4bDYVWAXwX2jaweOcKP23s/ki08pTpa5ofrrE+NM+Lx+NabyqoukhKbMTvaP9w0GB1CFj5+Zc0QmFCErpGLxEUrImSTpDbhQCQTh/iFTPENC/E7F/wcWUbSWfC+J1AojHr5nto3PcTvflZKbLmA45ytQ0eoiYVrOSpfh/hJA5jQNXcfbvBe/offukhjJiH3sDiwMugfIAK1sfPPwNll6JfJD2ALPbmwkbUs1nYpTlJ8TD/UmaujfRZAtGZp6ELcOYvs2CCF3fqxxr/t+WKw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e70282d1-8903-4ced-90a7-08d8667f4da1
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2020 03:00:22.1759 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lD1YiimyjiiUZ0pTRrPZ42IASutFnE7LXwTL9ZRGMzIBSzNuAvzGZAiQjkTQjco4f1mVaPzdSAl/sbPOUiFIHyyr52j2ZeIJGZQN1BtvkwA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6702
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.131 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.8.131 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kOBJJ-00Gq4B-8Z
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

Hi Jon,

See my inline comment.

Regards,
Hoang
> -----Original Message-----
> From: Jon Maloy <jmaloy@redhat.com>
> Sent: Friday, October 2, 2020 4:40 AM
> To: Hoang Huu Le <hoang.h.le@dektech.com.au>; tipc-discussion@lists.sourceforge.net; maloy@donjonn.com;
> ying.xue@windriver.com; Xin Long <lucien.xin@gmail.com>
> Subject: Re: [net] tipc: fix incorrect setting window for bcast link
> 
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
> This was intentional, although I thought the value was 50, not 32.
> In my experience we cannot afford a generous variable window
> in the broadcast link the same way we do with the unicast link.
> There will be too many losses and retransmissions because of the
> way switches work.

[Hoang]
When it is created, the value is 50. However, if we use the tipc command:
i.e $ tipc link set win 50 link broadcast
The window is set to 32 - this value is constant since then. 
Is it counting as bug?

> 
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
> >   	tipc_bcast_unlock(net);
> >   	return 0;
> >   }
> What is the effect of this change? Do we still have a fix window?
[Hoang]
No, now window can be configured as user intention.
If you'd like to use the fix window 50. I will update the code change. 

> What happens when we have buffer overflow? The broadcast
> send link can never be reset I rember correctly.
> Did you test this with high load, e.g. using the multicast_blast test
> program?
[Hoang] I tried to publish hundreds or services that uses SYSTEM_IMPORTANCE - it was not being reset when the link is overflow.
For others imp, the overflow issue will not happen because of oversubscription allowing. I will give a try with the test.
> 
> Regards
> ///jon


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
