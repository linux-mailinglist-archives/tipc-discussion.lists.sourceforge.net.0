Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A0D1CCFEB
	for <lists+tipc-discussion@lfdr.de>; Mon, 11 May 2020 04:59:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jXyf6-0006ju-4b; Mon, 11 May 2020 02:59:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jXyf4-0006jd-Ee
 for tipc-discussion@lists.sourceforge.net; Mon, 11 May 2020 02:59:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SwRTp0GnWlmy7CGaPU32UB/VasF7SgIGrsjnprPnqzE=; b=a+iYofjWcQjG66k44Y3wdErSOu
 RkYeB7nMK79Lzh/XhGN/oTq+cXHwIiolfn/PjtyYckuLKy0Eg5lxDJAORLXIrDCt9pxM74xdmNZXB
 cU+2BSnqOe0d1KFmg37C5B1cjZphMKqVAuFV9YZTzdd1tQWXdDBk+S4si4YjmZN/1enc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-Id:Date:Subject:Cc:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=SwRTp0GnWlmy7CGaPU32UB/VasF7SgIGrsjnprPnqzE=; b=K
 QNoRzDrskdk2xuhHajXDI8CvsN+H2EjdkidODtmHDYcFk5hIOSwVTEe0xYMuCebBX86nSbRpQES74
 ovX1YlclOUUNDaY1opRV7JGtiQrDfFdsH2imwB40AmLz9rbrglngafoLndXcvEDho2XP0ePl6OWo3
 hew3oQJJV28rHrJY=;
Received: from mail-am6eur05on2093.outbound.protection.outlook.com
 ([40.107.22.93] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jXyex-003NO2-1k
 for tipc-discussion@lists.sourceforge.net; Mon, 11 May 2020 02:59:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nkQ3vWiVkVbrFdQ//Movm7uQdtR8dR+kLdSvRP5lt/Dx236+c0Y/Ou2+7Zm7jOY4hYy5sGlS68qrngijvBry0r7iYki48+7b514CDa/N4WOAx/3+awN9kjKKja78S4D/fTmd97/diM4BLYVq/21GKkbkgj2hlzn8BzCysDvHdMZd+oVgtALr1D0lwaQztj2NjGt8low8Vikg52yUnnQa8MqwWQn8bN502NhVDPrwzp+eWG/RNksxzWXowokGc+T+DhWGyclF0oTrSenXfxBb6KuONAPWWNKuVee7wD4PrpaiCXu/Uwvdz+bjiJoB6j9+Hexl9RwhIljPI7N/MsjWpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SwRTp0GnWlmy7CGaPU32UB/VasF7SgIGrsjnprPnqzE=;
 b=DF5Xtsciw75k4r9fcCi/FTlqewXY6OqYTAMHwYF5U142dWDb0TQgam/dpyoaB3EviTrHAy9DdtRYTB3Q0DLE8nxk7okiFLMHYn3yE9mDmb58zgwVMe8unfyUAmU82bFD10SVtgGTtP0ZJwQS78X3o3FLRyOP7dNTnkoO1SK2NxrLVLN9LbvbGhCuxdr1whYMy0tAtZ2qvJS8c9O0l7waZQCbFZZ1k5wYXE4cllV52CHzaZWNoJZ81DgrkmZzoOLKUF1n8EH36pvm4zJ7pQfTh2vu7KL9CAOngjsEDVTQeuSSf+UE6XhYHrM0gTXeixcDTgFM4GskccaKHfIT1ATFvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SwRTp0GnWlmy7CGaPU32UB/VasF7SgIGrsjnprPnqzE=;
 b=ke8raRS3x0aqgwNwUy8noS2KT5sPnz9u0jnF94JLcMuAzqLIMX1HC/6RQ3avTrwxxlmS7jQ+CXAkGAIBMDhr+N3B4LohKHfvgEzjTeV9uyxjVSpuT6gAuj7RQKj+Tb8VYRxcDHbwYB3/efW/hG06TlW9ycSiF/Tc8V37XeBbyw0=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB4008.eurprd05.prod.outlook.com (2603:10a6:209:1e::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.35; Mon, 11 May
 2020 02:58:56 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c%6]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 02:58:56 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Mon, 11 May 2020 09:58:48 +0700
Message-Id: <20200511025848.4434-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-ClientProxiedBy: HK2P15301CA0002.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::12) To AM6PR0502MB3925.eurprd05.prod.outlook.com
 (2603:10a6:209:5::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 HK2P15301CA0002.APCP153.PROD.OUTLOOK.COM (2603:1096:202:1::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3021.2 via Frontend Transport; Mon, 11 May 2020 02:58:54 +0000
X-Mailer: git-send-email 2.13.7
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 77d42cb5-4e32-4110-cdd3-08d7f5573eab
X-MS-TrafficTypeDiagnostic: AM6PR0502MB4008:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0502MB4008DAFE3CBFC230D72F76DEE2A10@AM6PR0502MB4008.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:510;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FDtZAzuEYODgQmICtKKd5lxj34JuF7FpHTZ75SbNCuMTtesPX3CyV/Ml3XAm4vMQ2KNHJCkC4GHorNd4fq/n1FGRbWQCeZsXt1atdtbxKDknJmRsX1BdeA685RtNO167bfB902JtZPqIiuG5GhoM0j4SwWN7CIVsf3npAvhquB8jHfBGPKZh899aa2iBpgHqkw7byTfSWG5jqNT1SeAbasq7HMBXY1bq/sa0KC2/SoWRAWK37TD1oMSdokVwnam+g6mjKaAblKTssAeFhtKFXgyMTPVouzDVgWdDkV6Pd3Nv6mQqddsicRXVXcq404Egus8so7RvgRGQHTItX04kAEqq3u9UyFPFKv0S11/27Cndm4tntnW9S3a4PGMu/GgELTHp39xG1miiFcACFsAxHPcSkY2doXS7epFg4JuB5F1JB0RQHOggQh07UQ+yAxSRo76Jlviyez/etCcGOrCfu3At9JoBukJRrQZkI8vyzKnaTvD7yncBy6z0soWeKvjJfZQS3NhSlYwInVBbUoiwEA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39840400004)(136003)(376002)(346002)(396003)(366004)(33430700001)(66946007)(5660300002)(66556008)(66476007)(33440700001)(103116003)(4326008)(16526019)(186003)(26005)(7696005)(52116002)(6666004)(2616005)(956004)(1076003)(55016002)(316002)(8936002)(86362001)(478600001)(8676002)(2906002)(107886003)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: +7bRK1kckXdDu3xuPn9kH488Z6B8G6B337dRYaB3raLNWzxqSn5XYXiwCrJCR/PKPbu/uNSVfYhs1nJHMlF8StSO6e8FPmw0Gp5yob7zG6rVmWHn/BWbZFiBe4qliOGqJUQv1/B7mRepdelU++Y5ZmfJemBugaPKLxMNg39Ci+u7b8TE+9+v00enNkp6xHTeRB1ft2DnyjMhkJFHIcXE75neKJ2A/hRm2yPGTswJ4eUVivPWFTWWnAnpKXZom7XF16IHy0OUfYm5VOOeHGuWXIdlievDtGDMPQRi1AZgxigj1uf+NzXgVmODgoy42DEnHGOorqamgGHRutxLz30u9wUoCEFSxb74/ecQ9FzO0cj+yK7N/nUsWMbXf8vWHF2ITyR6LDJPwwnqDQIWkB2q6AeEu+186hLu2zYlHCCtBQ2FoMNVeIBphVzrYBCHIA9xfIiBUdjEvmsRugxM+WN+Kj/gU42XqY/bmVaG3Pejh4Q=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 77d42cb5-4e32-4110-cdd3-08d7f5573eab
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 02:58:56.2109 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2owfWtvDDVI3CUKNWrDGz7UKgxz6KfaHoZkxG0/MglYR/GWwQUHm3/jgVSFPqxNj/PlFPO9w0oZAqeNAa2a1xLsTMznTH7vzWCpow+sv5DA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB4008
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.93 listed in wl.mailspike.net]
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
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jXyex-003NO2-1k
Subject: [tipc-discussion] [net] tipc: fix failed service subscription
 deletion
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
Cc: tipc-dek@dektech.com.au
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

When a service subscription is expired or canceled by user, it needs to
be deleted from the subscription list, so that new subscriptions can be
registered (max = 65535 per net). However, there are two issues in code
that can cause such an unused subscription to persist:

1) The 'tipc_conn_delete_sub()' has a loop on the subscription list but
it makes a break shortly when the 1st subscription differs from the one
specified, so the subscription will not be deleted.

2) In case a subscription is canceled, the code to remove the
'TIPC_SUB_CANCEL' flag from the subscription filter does not work if it
is a local subscription (i.e. the little endian isn't involved). So, it
will be no matches when looking for the subscription to delete later.

The subscription(s) will be removed eventually when the user terminates
its topology connection but that could be a long time later. Meanwhile,
the number of available subscriptions may be exhausted.

This commit fixes the two issues above, so as needed a subscription can
be deleted correctly.

v2: define a new macro to write sub field value (- Jon's comment)

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/subscr.h | 10 ++++++++++
 net/tipc/topsrv.c |  7 +++----
 2 files changed, 13 insertions(+), 4 deletions(-)

diff --git a/net/tipc/subscr.h b/net/tipc/subscr.h
index aa015c233898..6ebbec1bedd1 100644
--- a/net/tipc/subscr.h
+++ b/net/tipc/subscr.h
@@ -96,6 +96,16 @@ void tipc_sub_get(struct tipc_subscription *subscription);
 		(swap_ ? swab32(val__) : val__);			\
 	})
 
+/* tipc_sub_write - write val_ to field_ of struct sub_ in user endian format
+ */
+#define tipc_sub_write(sub_, field_, val_)				\
+	({								\
+		struct tipc_subscr *sub__ = sub_;			\
+		u32 val__ = val_;					\
+		int swap_ = !((sub__)->filter & TIPC_FILTER_MASK);	\
+		(sub__)->field_ = swap_ ? swab32(val__) : val__;	\
+	})
+
 /* tipc_evt_write - write val_ to field_ of struct evt_ in user endian format
  */
 #define tipc_evt_write(evt_, field_, val_)				\
diff --git a/net/tipc/topsrv.c b/net/tipc/topsrv.c
index 931c426673c0..fb6d06eee29f 100644
--- a/net/tipc/topsrv.c
+++ b/net/tipc/topsrv.c
@@ -237,8 +237,6 @@ static void tipc_conn_delete_sub(struct tipc_conn *con, struct tipc_subscr *s)
 		if (!s || !memcmp(s, &sub->evt.s, sizeof(*s))) {
 			tipc_sub_unsubscribe(sub);
 			atomic_dec(&tn->subscription_count);
-		} else if (s) {
-			break;
 		}
 	}
 	spin_unlock_bh(&con->sub_lock);
@@ -362,9 +360,10 @@ static int tipc_conn_rcv_sub(struct tipc_topsrv *srv,
 {
 	struct tipc_net *tn = tipc_net(srv->net);
 	struct tipc_subscription *sub;
+	u32 s_filter = tipc_sub_read(s, filter);
 
-	if (tipc_sub_read(s, filter) & TIPC_SUB_CANCEL) {
-		s->filter &= __constant_ntohl(~TIPC_SUB_CANCEL);
+	if (s_filter & TIPC_SUB_CANCEL) {
+		tipc_sub_write(s, filter, s_filter & ~TIPC_SUB_CANCEL);
 		tipc_conn_delete_sub(con, s);
 		return 0;
 	}
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
