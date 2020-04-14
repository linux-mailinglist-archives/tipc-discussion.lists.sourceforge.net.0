Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F116B1A753E
	for <lists+tipc-discussion@lfdr.de>; Tue, 14 Apr 2020 09:54:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jOGP1-000280-Dc; Tue, 14 Apr 2020 07:54:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jOGP0-00027l-V3
 for tipc-discussion@lists.sourceforge.net; Tue, 14 Apr 2020 07:54:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dShu0rR9KBxih5n9Klh8g4bEigIWLxvjrGrPLNBBh7Q=; b=PQCaIgdVHdE9EZ0MgMI68PeDHT
 3Fv+As0scSTbGsJ7Sa+CmoCsd8S9YQFTXPT1ECKHZWrSlD8yJWph9WJkmZ1MuvsFRuySiuaDHMQHM
 1Ppa4BzROL2ApvzcSaRkZk2dgYcRUUwM2E0V/T/IpKo7bXtslE4zfS9Z130o2py9HW/Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dShu0rR9KBxih5n9Klh8g4bEigIWLxvjrGrPLNBBh7Q=; b=bO3Y523tAjMMF76D7aT6BTp01r
 0KRe1djtHk4AZlGkCmIB35IxyxMlMGdmQWyrAHSFC/HZkWbEj9Pl4SeutsCSMe9g+QWrKAf5pjbpN
 Lkx7kfKoCaoQlew1AdxUqWsPzvvdpa6i7pXNgm2i6AoyhbcE7ERW+EugvDnmfTeBJ9oQ=;
Received: from mail-vi1eur05on2111.outbound.protection.outlook.com
 ([40.107.21.111] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jOGOw-00FW8S-Tx
 for tipc-discussion@lists.sourceforge.net; Tue, 14 Apr 2020 07:54:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yh8uV+HMsu5Ki09KhZ04i9dRR9ryRwKC6LPW23SMKyb/SxSxujUhk47j5G8t/IcCV+Ozz7ZojcxdIimcLSBhTN/rzrDID2XfYMn+/8ae4BTtXy3FYpl8Bffn3DxY5BXKs/wFW9pHGZ1w8DgHWkBG/+covpJsT8bMeSMYKf5/8mAMC02XXaMi0RZEwsBIx15kl1yz27cvEM2x2qos/lujaI3o7LVdEcqpISL5FK47+GCl1G5tAlbJbqAv4l1a41OjTJ3YUUelg/ytyMujZ6BA1GXaafNUyEC1Sz9YMZJBs11x1C/MYYF78ucc0KSZCTq/gL4LdDHaXeVIN4SYDyvLNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dShu0rR9KBxih5n9Klh8g4bEigIWLxvjrGrPLNBBh7Q=;
 b=C0CwA+QphLCCRUrpu8I5alGZH3yq74PAM2DT2McOuZXDW9GA5LYF0dTR5eyVGuGdBf4I6tfl045E9XBtVF4ckJz3z/Er27TelzNmXT1Mh8SRoyBiJqDMbBIadx/0K/485HHylU67+YJxFn0rXsayo9QzPJhPSN1qWKs8lioU6suRWE/faspccEyOsVqUtTLokziUjP3Qh7Mu+ByIZ86GKUH3ljSMKO132gGivJTRKnd/2AM4lgtn6p4sEWkF0vd2ZEn5ZI8tAHOMff2Ko8DXUKZoCQwJQ3seNpS/9ROGPmFTrNyJLumTTgTy7J9AWF11MrIGhLvnbKdDwzaoJ2lttA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dShu0rR9KBxih5n9Klh8g4bEigIWLxvjrGrPLNBBh7Q=;
 b=pXLlS2A4mgwb35vZZgwJHOswo0Q94wKA9faAnWAgEe4vtfGKFO9IBE9Gqr3Cx3pLkQ0Y4uFhstuVRprHQfiHtJy9a0ifIDJnbZMT8pCuk406HYWtnt/nCtXBPKSOLHYAMlGUq1gyoYujR/KVI4KEVMK8MWAQuqsy0tLTQoW0O/0=
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB3622.eurprd05.prod.outlook.com (2603:10a6:209:9::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.28; Tue, 14 Apr
 2020 07:54:22 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c%6]) with mapi id 15.20.2900.028; Tue, 14 Apr 2020
 07:54:22 +0000
From: Tuong Tong Lien <tuong.t.lien@dektech.com.au>
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>, "jmaloy@redhat.com"
 <jmaloy@redhat.com>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "ying.xue@windriver.com" <ying.xue@windriver.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [net] tipc: fix incorrect increasing of link window
Thread-Index: AQHWBDOfIZ12seuxI06gGdfH3N/BGahm1vPA
Date: Tue, 14 Apr 2020 07:54:22 +0000
Message-ID: <AM6PR0502MB3925EAAFF907C019A2685771E2DA0@AM6PR0502MB3925.eurprd05.prod.outlook.com>
References: <20200327123103.4171-1-tuong.t.lien@dektech.com.au>
In-Reply-To: <20200327123103.4171-1-tuong.t.lien@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=tuong.t.lien@dektech.com.au; 
x-originating-ip: [113.22.229.239]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 446efa04-75ac-45e0-1abe-08d7e0490b8b
x-ms-traffictypediagnostic: AM6PR0502MB3622:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR0502MB36228A13B6AC0BE6C90FE840E2DA0@AM6PR0502MB3622.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0373D94D15
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(376002)(396003)(366004)(39840400004)(346002)(136003)(55016002)(66946007)(76116006)(66476007)(86362001)(478600001)(7696005)(66446008)(64756008)(9686003)(26005)(5660300002)(8936002)(110136005)(33656002)(71200400001)(66556008)(4326008)(316002)(81156014)(2906002)(107886003)(8676002)(6506007)(186003)(52536014)(53546011);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: dektech.com.au does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WNwvOfzzWG/9QeuGqyuWDpiuXV+edPrVNrSuzo9g3lRIcdYkuzMR8WR/OjhBIERalNmjBmzrOEKKpOZMOeWYlaqzbChUocYHxGsiRO/pijfoDx10KdAY8uMdyLA+DtsuaD+eAF7l6D4dl9WwhmDJkcmZDBLqI2Gyj4EZehfF6ywzKxpPhGTQAtdiaWeeNDCUa9HBgcqhEYAcHIH/0GC8cY0+n+erUahAUJykg7BK4IeUD2TSJ1I71NLyzM4/xqDlEru+0o0F4VMRLiMt6JpF+WQx4xUvnf2WtdnyM5MB61Pr1annW06GoQJ6LC+qxHtdOzshKv3Axo90sraNRWQQCK1fSwJmVQJ2saJ+sjpxvRdeBBvWRGPECGn2+QkxILCqBqcdBsXJ3NRX9dy2u7Q2vboftMKJJKLD+TiHmRWQcad+9C2/l4gj/wC9hSHvdswp
x-ms-exchange-antispam-messagedata: EJ6o8rC0Q7uvqX1z2P82IFt1lwZI2SqO7bu7jSpDt86U4K/Ky248CrGQf7u4o+XFfRPwPlGtOHXdjWQ6YYvWsjwqqAwFd9YGKq08JB31uPkJakxnlKFyhjy7LSaMNcnie78k9SIuwdrv6hFBS+ecoQ==
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 446efa04-75ac-45e0-1abe-08d7e0490b8b
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2020 07:54:22.5945 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0OE11zzkMd3C4lvqM0AO6Fd08hHjQj9qi+9F8tVYURmOg7xaWfYcVr31EJAVPxJc7RL1cB7I9Sd37uni9znklhODtZSRok0AHF1Rsdqt6j4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB3622
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.21.111 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jOGOw-00FW8S-Tx
Subject: Re: [tipc-discussion] [net] tipc: fix incorrect increasing of link
 window
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
Cc: tipc-dek <tipc-dek@dektech.com.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Jon, all,

I understand that you have agreed on the solution to the issue in previous discussions, but please make a formal "ack-by" so I will send it to net.
Thanks a lot!

BR/Tuong

-----Original Message-----
From: Tuong Lien <tuong.t.lien@dektech.com.au> 
Sent: Friday, March 27, 2020 7:31 PM
To: jmaloy@redhat.com; maloy@donjonn.com; ying.xue@windriver.com; tipc-discussion@lists.sourceforge.net
Cc: tipc-dek@dektech.com.au
Subject: [net] tipc: fix incorrect increasing of link window

In commit 16ad3f4022bb ("tipc: introduce variable window congestion
control"), we allow link window to change with the congestion avoidance
algorithm. However, there is a bug that during the slow-start if packet
retransmission occurs, the link will enter the fast-recovery phase, set
its window to the 'ssthresh' which is never less than 300, so the link
window suddenly increases to that limit instead of decreasing.

Consequently, two issues have been observed:

- For broadcast-link: it can leave a gap between the link queues that a
new packet will be inserted and sent before the previous ones, i.e. not
in-order.

- For unicast: the algorithm does not work as expected, the link window
jumps to the slow-start threshold whereas packet retransmission occurs.

This commit fixes the issues by avoiding such the link window increase,
but still decreasing if the 'ssthresh' is lowered.

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/link.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index 467c53a1fb5c..d4675e922a8f 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -1065,7 +1065,7 @@ static void tipc_link_update_cwin(struct tipc_link *l, int released,
 	/* Enter fast recovery */
 	if (unlikely(retransmitted)) {
 		l->ssthresh = max_t(u16, l->window / 2, 300);
-		l->window = l->ssthresh;
+		l->window = min_t(u16, l->ssthresh, l->window);
 		return;
 	}
 	/* Enter slow start */
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
