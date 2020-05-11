Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 101141CD086
	for <lists+tipc-discussion@lfdr.de>; Mon, 11 May 2020 06:00:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jXzcB-0006hI-Fg; Mon, 11 May 2020 04:00:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jXzc9-0006h1-Op
 for tipc-discussion@lists.sourceforge.net; Mon, 11 May 2020 04:00:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NkBUf9GecyJhJg7zddpIS+cqYtP/Z7LMiOJza9KTJPQ=; b=m1br88o+zxt4ZDJxmGq8jKEod1
 5gBF5UhGOpsw5Q+2kgPAvBRYxOBx4gdgdLywOh9xXKbcB2q0eecLJW5QABRRrnbcsB2rlDWjgFjZt
 2u/358o0IioVo0G2/QgFUh9hAao7Jq2Raltr07t62JmkKWgW6R1Ocb1lc4f0d3xv9kik=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-Id:Date:Subject:Cc:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=NkBUf9GecyJhJg7zddpIS+cqYtP/Z7LMiOJza9KTJPQ=; b=R
 vrWZ6mpb27Q4c6J7Loe77WgxIINW+2hzyALGwbYwRLB9sYsf6TonYM2QRjf1xmhCV1PXwdrumobtm
 vflbxay/hoV2zwR3fkCtaVgdAyCzXbiZ47rX6VPBsH0K0IJIC4GY97ZLLfT120zxWzQKQWHAeeCWf
 3ft3YOuaALh4llhA=;
Received: from mail-eopbgr140139.outbound.protection.outlook.com
 ([40.107.14.139] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jXzc1-000PhG-9a
 for tipc-discussion@lists.sourceforge.net; Mon, 11 May 2020 04:00:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n0KzRMYJ1ARC3Iv2CFh/Fac6ZFa+YSveQs+5oxKG+ePKI5v6YmrcoxsoUKscNibvJJdt9rgkej3c9os5hOfIJRhuHk8RuzlddPKrf3Wrk6D08pARNH/4AePLCHp30Si22UKLQ8amhHlrzoIG3uyiS9r71o3HnrYH6Bpuf5ZsQN1hSF7jxcJA7pFw65xL1oJbnccn4a2/Er//jebRjeJ8G6wkXBsA+Hxbe7jy+pW3MJpTH/I861Ktq0rIzEfEfXqG5oK/KgYL4nOyhWlMZPUUaJG7zOpWBJIf+Mv4gkRNmgK5tPMYWw5vjKvOvn4m6AATwY9KjGJKazkbECExJnT7bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NkBUf9GecyJhJg7zddpIS+cqYtP/Z7LMiOJza9KTJPQ=;
 b=VZvevJ0+NbfJjhcu1lgZd4Z8iQq7mRDO8TXqe+fBXPFmtezkj/PxF49Mqjl+A4hODpLoG1Enp/5+7vPUxtFlyzl3IpYeeGekPibf4LvMRZixim7h5CEuuV6k6qJaKU0hrGnncjCZd/6qBS3kgzS5DxwXGRge2PE6MXcuSV3QI/fELKqOC5ooqx5bWkZy8fcGyAfLeeUwm6CXi0bnuS/YMCDM/M/0UjD5yv2FTu7Lme4Yf8D8a9OuMXQxmimHCixG3W/FAVaFT61zQJU6qa4LVtzXAQ4qvg0ADfXTrr+p8M1kGhab4R2xnFoUA9BdHrod4zvik76Pazf2wFYQ8fCs/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NkBUf9GecyJhJg7zddpIS+cqYtP/Z7LMiOJza9KTJPQ=;
 b=mq/d3cc1iiTjzrydnbqPY6UJp9EZsPOykoCjG1ujDf9lL+wvJtYfE1K1J9rLuPKBHxj6Ot5ipk7Hn+o4CmVos5sdhPirsDvX6MIBi54aJL3XMOW8abPLiExz6I0S9g9LXwQIEJB6O7n1nbq3VNYSjHwSCkrrfDvf3nHfkl720n4=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB3829.eurprd05.prod.outlook.com (2603:10a6:209:7::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.34; Mon, 11 May
 2020 04:00:06 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c%6]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 04:00:06 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Mon, 11 May 2020 10:59:54 +0700
Message-Id: <20200511035954.6486-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-ClientProxiedBy: TYCPR01CA0082.jpnprd01.prod.outlook.com
 (2603:1096:405:3::22) To AM6PR0502MB3925.eurprd05.prod.outlook.com
 (2603:10a6:209:5::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 TYCPR01CA0082.jpnprd01.prod.outlook.com (2603:1096:405:3::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2979.26 via Frontend Transport; Mon, 11 May 2020 04:00:03 +0000
X-Mailer: git-send-email 2.13.7
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e665f35a-c045-47fa-0bec-08d7f55fca43
X-MS-TrafficTypeDiagnostic: AM6PR0502MB3829:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0502MB3829C2607A5F529D6766277FE2A10@AM6PR0502MB3829.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:510;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tSdSXJwt6PY27TEprbBCkr5JahEbEQfbRoF82ynp7ZA42IElM6mgyzdMBC9kN+5QN1T5Ft96yPCygKZy7EavpFb+hanoGFMb7/QyipUJod0oaDRIUJ39DVBxu8NXzlEyySoahQuUmwG8RMgc7JgZHQMYcXULyDX7upkxAu7IsCVc/LbY/NfTPj5DfoQxtJt3NbBNg3UFy+jkv/mRlaqFQdONrahTH+3hnq9J4jTqXxV0V84BL67QRbixA3ro6+HwZ0dBkgbvDCZMUisceYdSsyVFUZe7b5RBy/YllqXBOTfdS5lbF4132Y80aL3fQrPe2lD2Z/tkvOeojFixxZLh5ljyGfN0rZ5YEjZ7JEDBwNjSNyFjxsjfBpatFadaBJU79hAiMSaX9/cTymvbwo0exDtGV/s5d9JMziQjoX37T89ZRMCnKPJkNynI06SFRzjFZn5En4l02fIbtWcptQvICQnkR/00oRUKRyhGKh3Ou1q5lQLb6Gqfi5OISGrDOj9j4LTiQt27z19dTsmaMDrhqA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(396003)(39840400004)(376002)(346002)(366004)(33430700001)(478600001)(316002)(8676002)(33440700001)(86362001)(1076003)(66946007)(66476007)(66556008)(4326008)(2906002)(5660300002)(956004)(52116002)(7696005)(186003)(16526019)(2616005)(107886003)(103116003)(36756003)(26005)(55016002)(6666004)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: puoPcuHskIOSzZZs7P3J0rj/IyV0Mrm96A/FLV3jS3EXghjZrIT6mSG4Q7y0XSTGO3bfASbvUXusCUFHZPEftKbhMcbFeMjsLmrRYqkvJKiN4WCBNq1TJEPVHXi6vLh1mtCVXCl+4sRkyCftoPiTpgmDLrnZw8gm0b/MqOj1w+4c1yS/pg85xW3hMKMTUUSAUCvd5EnBkJLe8In0WDoBz9Rrel94aqo6IlktjsSwKjNo5nQ5IpU3qt8BYfhis5TT66MGtJ2QLshhUJlkOjBKGf6iqc5KOLP9z3WM8Qj4WTBGaIhRd5wC97UkFseK1m67gTnE1SB2FmUGnf+vSGxRvmM29MEPPzso4q+N7g46H1lpWYBa3v9peqZ//1lE1sCKoCIXVx2dZFFCDsz3TqgvnKPb8gTyEUIXygVGjuGr+D+vVAcSxKQaN/Xf9y2qFuTsAPlG6MsgdGfdGrAJhnD433Dn/Kwcb9IeBvL8AxSRCHQ=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: e665f35a-c045-47fa-0bec-08d7f55fca43
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 04:00:06.3902 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TcToBBHfwVZqG/xEOQ9oAUGiwBtrrZLRRkYHBCyUuTu7OP2gMzYf0DfucJcrgGZ3xVCvuXak60zbeySZiv99uXO0hzpJk+ZKvt+rbwY8ooU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB3829
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.139 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jXzc1-000PhG-9a
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
v3: break if the sub to be deleted has been found

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/subscr.h | 10 ++++++++++
 net/tipc/topsrv.c |  9 +++++----
 2 files changed, 15 insertions(+), 4 deletions(-)

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
index 931c426673c0..446af7bbd13e 100644
--- a/net/tipc/topsrv.c
+++ b/net/tipc/topsrv.c
@@ -237,8 +237,8 @@ static void tipc_conn_delete_sub(struct tipc_conn *con, struct tipc_subscr *s)
 		if (!s || !memcmp(s, &sub->evt.s, sizeof(*s))) {
 			tipc_sub_unsubscribe(sub);
 			atomic_dec(&tn->subscription_count);
-		} else if (s) {
-			break;
+			if (s)
+				break;
 		}
 	}
 	spin_unlock_bh(&con->sub_lock);
@@ -362,9 +362,10 @@ static int tipc_conn_rcv_sub(struct tipc_topsrv *srv,
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
