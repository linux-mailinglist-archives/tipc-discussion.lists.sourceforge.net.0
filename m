Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B929FBCEE
	for <lists+tipc-discussion@lfdr.de>; Thu, 14 Nov 2019 01:17:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K5juCZlJFdd4Cwdvo1xMiRKKwGPgUJ0Q7X5QTV3RmnI=; b=Q8FOW5eAchjoyMNTG9FowLhAE
	q3Arl8aMi7JP5mrACzXB1pIoMZdJSJXDH8T225i7PH4xCK61e9A3rsyD9HWy0nbbvRFOgwDdk/JKH
	SlFBjdYeeRfCpj6UWsFcavOYtvUOZDqHDsmTdJo5pHpWfRAUjjIilW2O02QWjtS6ov1bk=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iV2pQ-0005s2-MS; Thu, 14 Nov 2019 00:17:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iV2pO-0005rv-VG
 for tipc-discussion@lists.sourceforge.net; Thu, 14 Nov 2019 00:17:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y5mTq40tK3hIETFRPibTldfx1EB4USpuGTvC7EE+new=; b=UmeUuAYTbi1/omdF8n2GeizXgA
 hdIESr0MJJoOVDM61A5kf1bcT9aNCmCHuGyn1Z4FEqAxgunYPPQ75bfiGB/YS1fj08NFNUzN2F4P0
 9O57SkEWa+vQAcEhyFEoR0L6F9FIYYOInM3lhi6J2UMdh2KGW3synP8lV5jsy2hKeoUs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y5mTq40tK3hIETFRPibTldfx1EB4USpuGTvC7EE+new=; b=Gpyrx8XYMYnO5kOKLFebiBSkII
 8Vkh4Wd47rONsymviVAWw9wKqVWufRchCaFf8BnniBAzJKx3fVKw9QpALtTNBXJ5ydnRq2XYyijnL
 ghQmGE3bS/6XTFQKrVmkSijpjDvctTTqZSuhmN93y5yFxy3g+aua5YlMflXoHw6wx4OM=;
Received: from mail-eopbgr820077.outbound.protection.outlook.com
 ([40.107.82.77] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iV2pG-002HcR-LS
 for tipc-discussion@lists.sourceforge.net; Thu, 14 Nov 2019 00:17:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=itc99We3O/ml99poxuMj+K7i5sdet47rXPrVk35IgLqG9NtYs5m2r8On0YATROh7sfPeWCqHV5gx7IxGCHeePyXiopKC7ptaQ9Od4qHA/6AMvGnbMkBzqBPoydQGPAeAHjfgLlH17k5DrrgkdMoCZY4/rPzauSv229R5unAnnIi9rf5mkwQSfLQSMn/YpQdRbpHTT98IkRuKp9HHQs9nLUUgbLX1kARjTO5hwJKWIBq1GzD+Oo3CHXhzZqQv8gF5lM3z5cMP6+AnK8iw9giq9sTyXxZbyQ8YoN9/Z5Nx7oE1LT3VockXKDwgpVEpNYMCqvOC8YtNCQR7qbkeJ6BjjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y5mTq40tK3hIETFRPibTldfx1EB4USpuGTvC7EE+new=;
 b=DCoqpJpXnb+OkZ84yc4y6zsSaReazCmnd3+BZ8Dn9+eQ7R3y/FhIwf6B2P8XSKzAc3uMIXFKdvOepjDp2gzrZ1dASyyjQiyjiNsof0CfiOse8Pug8Ub0i/qY2rwSnrjB5iRaj9z1ksxfu6Bg711iYqCDTinLn7x1YBzjPUauQmny/7O2TPrf/ogMgO87bx1UZfu3L8qXo5mLYM9L9gvzcXrBO9OwJhV2NCAtjo87Ah7y9isT/4rFf1pxlGUTY4TrDatZMPJk9MRObjTmQm0+rUcDWFpQtPaXqAVAFaglG7ng4afU/um5iaMcJQYk0R9J3CuC2TvF3Ycme9tRJ0caIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y5mTq40tK3hIETFRPibTldfx1EB4USpuGTvC7EE+new=;
 b=QirLNOIIs2Irl9Gd+PKER6+hj8hq1uqE44UAsQQfMnFKIVN8Y18uZXSH4+Cg3YH3anPM5x2Q9YnySkDVcZNNvWU2T9j1Yst7y8ItZgEMCWvN/kUHOcadYuQJQVGQd0+8Hs+BNX2RZc+9sBjaWgMIHOVg3ZclvY9KuE9AVtzteRQ=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3606.namprd15.prod.outlook.com (10.255.156.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Wed, 13 Nov 2019 23:42:47 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63%7]) with mapi id 15.20.2451.023; Wed, 13 Nov 2019
 23:42:47 +0000
To: Matt Bennett <matt.bennett@alliedtelesis.co.nz>, "ying.xue@windriver.com"
 <ying.xue@windriver.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [PATCH] tipc: add back tipc prefix to log messages
Thread-Index: AQHVmnj4WEVyPCPLjU+4VjtSx5PZ1aeJwvzQ
Date: Wed, 13 Nov 2019 23:42:47 +0000
Message-ID: <CH2PR15MB3575FD6D67A24195E1229F1E9A760@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20191113232003.29436-1-matt.bennett@alliedtelesis.co.nz>
In-Reply-To: <20191113232003.29436-1-matt.bennett@alliedtelesis.co.nz>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9dade5ac-d972-4b21-e9a6-08d768933040
x-ms-traffictypediagnostic: CH2PR15MB3606:
x-microsoft-antispam-prvs: <CH2PR15MB36068A607CF6A525CAD55AAF9A760@CH2PR15MB3606.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:199;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(39860400002)(376002)(366004)(136003)(199004)(189003)(13464003)(64756008)(76116006)(66446008)(486006)(55016002)(256004)(66066001)(33656002)(66556008)(6506007)(4326008)(11346002)(446003)(15650500001)(476003)(26005)(76176011)(66476007)(44832011)(6246003)(53546011)(66946007)(102836004)(186003)(71200400001)(71190400001)(9686003)(74316002)(81166006)(2906002)(8676002)(14454004)(2501003)(7696005)(6436002)(229853002)(110136005)(478600001)(81156014)(305945005)(7736002)(316002)(99286004)(25786009)(86362001)(52536014)(2201001)(8936002)(5660300002)(6116002)(3846002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3606;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Zd8ll4eISzCXZ5ltWM3RE94c4to+21NT/qWBaQwzlROGps5Ps1ENN+jE2LB1m4aTvnt+vypJs7gI2wPseWXmIxbQuj7aP6snsBsv+Yt7Z+Bw+BvCmUHIkUaZen/mRO1IrdMxlJv2Nxd6WXnKTaliJan4nMs4RVOUCrlKdMWlnePT2IWEdUGIG84HEszuaYl9qLDDsyrgroJTmkihCoX+J/JGNNoEAwWf3/5MVUfdtOfv3l8vz3T9W0XOpUNLKMSa4sRndefVwDAdXfd9KLKGvqAGa5sRu4nhpRKFQp21NfNOHhJuvSijFw3tI2YdwbjbrcxPxRnd1BOOHiLHTlujTAwgR7tOjh6S4EJrYo4sxr5/vK0XEK6TP1wKQv42Jzq0NmqCTFqm+BEbWRAv1R8v76xH/WS7b/XqD9c4NuwYt8PbgLV5wJL34bizJmFWodBK
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9dade5ac-d972-4b21-e9a6-08d768933040
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 23:42:47.3767 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EaOedeA6AyzyO9lekAcpPHGZlCA+VvKgu8hUPFupXb7ivg/HThxChOtZNRNOujO7MJzw9YOOQQCTv8LuzW6aRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3606
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: alliedtelesis.co.nz]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.82.77 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iV2pG-002HcR-LS
Subject: Re: [tipc-discussion] [PATCH] tipc: add back tipc prefix to log
 messages
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Acked-by: Jon Maloy <jon.maloy@ericsson.com>

> -----Original Message-----
> From: netdev-owner@vger.kernel.org <netdev-owner@vger.kernel.org> On Behalf Of Matt Bennett
> Sent: 13-Nov-19 18:20
> To: Jon Maloy <jon.maloy@ericsson.com>; ying.xue@windriver.com; davem@davemloft.net;
> netdev@vger.kernel.org; tipc-discussion@lists.sourceforge.net
> Cc: linux-kernel@vger.kernel.org; Matt Bennett <matt.bennett@alliedtelesis.co.nz>
> Subject: [PATCH] tipc: add back tipc prefix to log messages
> 
> The tipc prefix for log messages generated by tipc was
> removed in commit 07f6c4bc048a ("tipc: convert tipc reference
> table to use generic rhashtable").
> 
> This is still a useful prefix so add it back.
> 
> Signed-off-by: Matt Bennett <matt.bennett@alliedtelesis.co.nz>
> ---
>  net/tipc/core.c | 2 --
>  net/tipc/core.h | 6 ++++++
>  2 files changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/net/tipc/core.c b/net/tipc/core.c
> index 23cb379a93d6..8f35060a24e1 100644
> --- a/net/tipc/core.c
> +++ b/net/tipc/core.c
> @@ -34,8 +34,6 @@
>   * POSSIBILITY OF SUCH DAMAGE.
>   */
> 
> -#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> -
>  #include "core.h"
>  #include "name_table.h"
>  #include "subscr.h"
> diff --git a/net/tipc/core.h b/net/tipc/core.h
> index 60d829581068..3042f654e0af 100644
> --- a/net/tipc/core.h
> +++ b/net/tipc/core.h
> @@ -60,6 +60,12 @@
>  #include <linux/rhashtable.h>
>  #include <net/genetlink.h>
> 
> +#ifdef pr_fmt
> +#undef pr_fmt
> +#endif
> +
> +#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> +
>  struct tipc_node;
>  struct tipc_bearer;
>  struct tipc_bc_base;
> --
> 2.24.0


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
