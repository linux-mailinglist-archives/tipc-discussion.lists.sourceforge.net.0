Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DE619F0AF
	for <lists+tipc-discussion@lfdr.de>; Mon,  6 Apr 2020 09:18:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jLM1u-0004ER-MV; Mon, 06 Apr 2020 07:18:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1jLM1u-0004EL-7w
 for tipc-discussion@lists.sourceforge.net; Mon, 06 Apr 2020 07:18:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=olGDZdr6xTL/rq3b0J823cAXESGl4IY0O/mGrxOOTaU=; b=FasA7dGBkRgRHDXJgg1lVO1K4a
 GzmJhRncaOsfZxi+JT/9w92DkvQyE5vKG8REwRpLoPjJhQA1PwsqJaXWR5nlmBNo75mQaZ46H8QGY
 BSFGlM9dq7R47RpAdU3RjyO+4I7lKK6ik+Co8hdySU7ZUies6NZWQV/Fb1d88a4fD9GM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=olGDZdr6xTL/rq3b0J823cAXESGl4IY0O/mGrxOOTaU=; b=QuRZiF6nDrcEq/u6ETLJZJt76n
 sZVfcn64LQPhcJJhnzvHpwX11R2SXvFLamMhkO3W2InaCzyJyo1GDuHnQTKv2YilYWAFCm8iPgJtE
 WWmq5Gh/w+fv7u+YbwVXWxabJMAJpoYARy03EzXUIXUqbTa3mYoEpfZOF8MUv+qOVYAI=;
Received: from mail-eopbgr700050.outbound.protection.outlook.com
 ([40.107.70.50] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jLLeH-005KmG-DP
 for tipc-discussion@lists.sourceforge.net; Mon, 06 Apr 2020 06:54:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XEFFDj4O70fxyAi6x8ORakNhCBnBXUG3jwhuoNK1OscKyQF/8dHhfEAnUFAM1x4YelEWA7r4AWiAzJ9clVBily9IyYOXknbyNkLo9sn4ZYnR7I7fu5ybSJnQDl4y/StEeLKA3AGqk0iU6o9Y2Cl34FcTb1LNLwTX3hliO+wKKnECJNhr+KuHcpU/ZxUUhxe5ujV7sIEAea6ZEyqSoJHC85H41Qv9JOx6LQMJ9N+eCuwLqE8yHjh7eAumU7cAHXHZlkrMP4CTpx7ZtcC6WJy4VUdUQ9SMyk1ekGFDJ0OxxvpU7Csm+hANbf6jg2uDHoQ0xTeoEEUULd0BgGuipRh1OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=olGDZdr6xTL/rq3b0J823cAXESGl4IY0O/mGrxOOTaU=;
 b=maLlL9imqDEW933X7qALdjZ5PpNIJDZooreMX1Rxrf6so+yoqbg6Q9IiurTXXNxRwauTyFYmpD30WxNcgcwLalOUzrZYBVosUAenmHRNRyRsUy34gKxvO7w7ZZrybXvivC7k8wwIy8uPof5cvf8J/PDYJdVYJQXoKY5F/rOUKKdboVLbIGpWEij1Y/G7YKTRu0ao3VFB/vmJvXwnkdhzlPOvG3n2+/gfOfOl/TO6p4ipiKeifuUsG98TEhBJZpc67RnadBy1afTr1kmMu0bJmNQH4NtcZF5qPOijWLLGFOY9+xh6+Pw+a8lDhCfCRNRDH3Z2AIrDehYBP6t7qkou1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=olGDZdr6xTL/rq3b0J823cAXESGl4IY0O/mGrxOOTaU=;
 b=GPowl/QeNRrqFdFvYm+dN5fV+DW4S66W9Z2iJ5mt37hj1LgW3CMQybA/RqTFTwKhIpkegXp+mE/8GaypwHxzIV/HTCkp8Ys2iqgUbdaiY/tAb10xq/YnY7wu/oMhIIBiY+N0iDvIrgZlkoAwwH0cy51K4MHVfQtlF+dzCElQ83w=
Received: from BY5PR11MB3894.namprd11.prod.outlook.com (2603:10b6:a03:18c::20)
 by BY5PR11MB4465.namprd11.prod.outlook.com (2603:10b6:a03:1c0::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.19; Mon, 6 Apr
 2020 06:19:40 +0000
Received: from BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::541:f9ad:2745:e289]) by BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::541:f9ad:2745:e289%6]) with mapi id 15.20.2878.017; Mon, 6 Apr 2020
 06:19:40 +0000
From: "Xue, Ying" <Ying.Xue@windriver.com>
To: Tuong Lien <tuong.t.lien@dektech.com.au>, "jmaloy@redhat.com"
 <jmaloy@redhat.com>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [PATCH RFC 3/4] tipc: enable broadcast retrans via unicast
Thread-Index: AQHWBLXvEtrijErf8E+WiB8QsdjYEKhrjK7A
Date: Mon, 6 Apr 2020 06:19:39 +0000
Message-ID: <BY5PR11MB3894FE632A7F59E6AC8F679D84C20@BY5PR11MB3894.namprd11.prod.outlook.com>
References: <20200328040309.4656-1-tuong.t.lien@dektech.com.au>
 <20200328040309.4656-4-tuong.t.lien@dektech.com.au>
In-Reply-To: <20200328040309.4656-4-tuong.t.lien@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Ying.Xue@windriver.com; 
x-originating-ip: [114.240.85.193]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c7c4af46-2935-413e-e5ca-08d7d9f27d27
x-ms-traffictypediagnostic: BY5PR11MB4465:
x-microsoft-antispam-prvs: <BY5PR11MB44656E8B81107082C08EDAA384C20@BY5PR11MB4465.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0365C0E14B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(346002)(396003)(136003)(39850400004)(366004)(376002)(316002)(66446008)(64756008)(8936002)(9686003)(66556008)(66476007)(66946007)(2906002)(71200400001)(76116006)(81166006)(110136005)(6506007)(7696005)(81156014)(8676002)(4326008)(52536014)(26005)(86362001)(33656002)(478600001)(186003)(55016002)(45080400002)(5660300002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: windriver.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: l9GDRim43TezpLRaL+3j4Y0s12H9LVwYvh9EWlRzTuHPOYhQMAKZfB1Grttj2ELkBIQzplPVok6mN02LwYqpFYluBorLmA/wGsgaAnpS/1SjyJqFu2LlkiHzkztumPCw6yjGSZCX3Pay1XTqAxyOX7N7rnZgyTZpVotz5dmh3ELjr+PBjYTDT/1mMywUr0dBG5mXAUteN8+TzUfp0RxgtXfiuShnCH5v15VdZyo7MI76PPD+GNLTgeyGwvsaq+cBL5u9go4pp7f1kMuDnVaykh1Hja5O3UXURzvjemnIJFWnl/phFontnhR0XK+6y0Kvczcp0RoxYurOBMvVHPuPjmWglknYoOPhI9jhN+bbguTVFqmQDuwxuVa7cqeifbgL0tAu5Ql4Vlx/HWADiIMDn3gqGpHAmC7XhsNWGzquMjd98JMo+1qp3rG/6I4WO+Dp
x-ms-exchange-antispam-messagedata: GlFNp2z+2eSbxTfPNEBJqlItRPmnUZTnE6exLU5JuVXoourN7GCaEvXOCDQrz8edG2MjgC89pORq8yC/vHBqrIqviV1cxUTvOISIk6hV+q4Gg8kYaeUGzpyufMuqMb7pB1kcECW5CpqJmNJPjn+YMQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7c4af46-2935-413e-e5ca-08d7d9f27d27
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2020 06:19:39.9265 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S+zfQ2P05EG/tznll1NnTERAZXCtvqtRQznOd4EugHXrqkSKPy5Bqkb+Y9SUXcsXOPKpJuHNjE3kcE5gvXsQRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4465
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.70.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jLLeH-005KmG-DP
Subject: Re: [tipc-discussion] [PATCH RFC 3/4] tipc: enable broadcast
 retrans via unicast
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
Cc: "tipc-dek@dektech.com.au" <tipc-dek@dektech.com.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Tuong,

Sorry, I have to use outlook client to reply to your email, which will make the email messed a bit. 

Please see my following comments:

==
[Ying] 1. Did you ever conduct comprehensive verification about this proposal? What kinds of test environment did you use in your testing? For example, how many TIPC physical nodes were gotten involved into your testing? Did the NICs used during your testing support multiqueue feature? How many cores were there on one your used physical TIPC machine? 

In addition, if possible, I suggest you could try to enable RT_PREEMPT kernel to measure what throughput results we would get. 
==

In some environment, broadcast traffic is suppressed at high rate (i.e.
a kind of bandwidth limit setting). When it is applied, TIPC broadcast
can still run successfully. However, when it comes to a high load, some
packets will be dropped first and TIPC tries to retransmit them but the
packet retransmission is intentionally broadcast too, so making things
worse and not helpful at all.

This commit enables the broadcast retransmission via unicast which only
retransmits packets to the specific peer that has really reported a gap
i.e. not broadcasting to all nodes in the cluster, so will prevent from
being suppressed, and also reduce some overheads on the other peers due
to duplicates, finally improve the overall TIPC broadcast performance.

Note: the functionality can be turned on/off via the sysctl file:

echo 1 > /proc/sys/net/tipc/bc_retruni
echo 0 > /proc/sys/net/tipc/bc_retruni

Default is '0', i.e. the broadcast retransmission still works as usual.
==
[Ying] 2.  Actually I had a similar idea before, so I also think the broadcast performance might be significantly improved through this proposal, but we act as TIPC developers, we should explicitly tell users what condition they should enable this option and what condition they should disable it, otherwise, users have no idea at all about when to enable this option or when to disable this option. 

 So, please give more performance data obtained in different test conditions. If this patch can give broadcast performance a clear benefit under any test condition, ideally we completely remove this option. Otherwise, at least we can tell users when to enable this option.
==

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>

 int tipc_link_bc_ack_rcv(struct tipc_link *r, u16 acked, u16 gap,
 			 struct tipc_gap_ack_blks *ga,
-			 struct sk_buff_head *xmitq)
+			 struct sk_buff_head *xmitq,
+			 struct sk_buff_head *retrq)
 {
 	struct tipc_link *l = r->bc_sndlink;
 	bool unused = false;

==
3. [Ying] Sorry, I felt a bit confused. One new "retrq" parameter was introduced, but I didn't find where it was used in this function. 
Can you please explain how the new parameter works?
==

Thanks,
Ying

@@ -2460,7 +2461,8 @@ int tipc_link_bc_nack_rcv(struct tipc_link *l, struct sk_buff *skb,
 		return 0;
 
 	if (dnode == tipc_own_addr(l->net)) {
-		rc = tipc_link_bc_ack_rcv(l, acked, to - acked, NULL, xmitq);
+		rc = tipc_link_bc_ack_rcv(l, acked, to - acked, NULL, xmitq,
+					  xmitq);
 		l->stats.recv_nacks++;
 		return rc;
 	}
diff --git a/net/tipc/link.h b/net/tipc/link.h
index 0a0fa7350722..4d0768cf91d5 100644
--- a/net/tipc/link.h
+++ b/net/tipc/link.h
@@ -147,7 +147,8 @@ u16 tipc_get_gap_ack_blks(struct tipc_gap_ack_blks **ga, struct tipc_link *l,
 			  struct tipc_msg *hdr, bool uc);
 int tipc_link_bc_ack_rcv(struct tipc_link *l, u16 acked, u16 gap,
 			 struct tipc_gap_ack_blks *ga,
-			 struct sk_buff_head *xmitq);
+			 struct sk_buff_head *xmitq,
+			 struct sk_buff_head *retrq);
 void tipc_link_build_bc_sync_msg(struct tipc_link *l,
 				 struct sk_buff_head *xmitq);
 void tipc_link_bc_init_rcv(struct tipc_link *l, struct tipc_msg *hdr);
diff --git a/net/tipc/node.c b/net/tipc/node.c
index eb6b62de81a7..917ad3920fac 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -1771,7 +1771,7 @@ static void tipc_node_bc_sync_rcv(struct tipc_node *n, struct tipc_msg *hdr,
 	struct tipc_link *ucl;
 	int rc;
 
-	rc = tipc_bcast_sync_rcv(n->net, n->bc_entry.link, hdr);
+	rc = tipc_bcast_sync_rcv(n->net, n->bc_entry.link, hdr, xmitq);
 
 	if (rc & TIPC_LINK_DOWN_EVT) {
 		tipc_node_reset_links(n);
diff --git a/net/tipc/sysctl.c b/net/tipc/sysctl.c
index 58ab3d6dcdce..97a6264a2993 100644
--- a/net/tipc/sysctl.c
+++ b/net/tipc/sysctl.c
@@ -36,7 +36,7 @@
 #include "core.h"
 #include "trace.h"
 #include "crypto.h"
-
+#include "bcast.h"
 #include <linux/sysctl.h>
 
 static struct ctl_table_header *tipc_ctl_hdr;
@@ -75,6 +75,13 @@ static struct ctl_table tipc_table[] = {
 		.extra1         = SYSCTL_ONE,
 	},
 #endif
+	{
+		.procname	= "bc_retruni",
+		.data		= &sysctl_tipc_bc_retruni,
+		.maxlen		= sizeof(sysctl_tipc_bc_retruni),
+		.mode		= 0644,
+		.proc_handler	= proc_doulongvec_minmax,
+	},
 	{}
 };
 
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
