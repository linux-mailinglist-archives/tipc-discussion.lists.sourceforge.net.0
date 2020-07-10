Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 813FC21B2FE
	for <lists+tipc-discussion@lfdr.de>; Fri, 10 Jul 2020 12:12:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jtq0h-0005Tk-VL; Fri, 10 Jul 2020 10:12:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jtq0a-0005RT-Mt
 for tipc-discussion@lists.sourceforge.net; Fri, 10 Jul 2020 10:11:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cK3yawOEs91B5rvIcjKZZu6wyJGX2QvaCgtTosX7tJw=; b=DCZIPJeFfIy4WZIycO6RboBZCb
 bj4W8UcL6AL4Q97CbuALQy3QDAJ7QF2wqrKwlwv2oX0F7QRaVgKnRJ3Cj807DWDGseBRf5biTRzzT
 mMe50ApMDgpUxOQ/L+6w+vD2aREbcIFvhh66yj63tB9a1ByEssv/iM4HRNk958HvH9oU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:References:In-Reply-To:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cK3yawOEs91B5rvIcjKZZu6wyJGX2QvaCgtTosX7tJw=; b=QcYef7la7++k2JErMqNCEqqJSc
 GLFSb5QuZziZfT2BiOiu+Zy2Xq0XdnumAmCVOs8exu8pun+UqciEhuDFZj+g2DSQuGCmb+99/OEVS
 cPh6okduxl8RDsWe4o31sOqZFS8Nu+fb5ydC2QqiCfGoijfxg81NzW99ewgj9X0IBj5E=;
Received: from mail-am6eur05on2097.outbound.protection.outlook.com
 ([40.107.22.97] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jtq0Z-001t9b-Eb
 for tipc-discussion@lists.sourceforge.net; Fri, 10 Jul 2020 10:11:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FTgIjsMApNKldubqnXR2p7Z1sXR9rgtbN42ElFRlk7bosSlxp7SSBtIPF0HlFRhiZ89OpVVb+TR7+fF+xNYwPDmtecs412A0S7PgBAK9Ont7hSMFJz/DBf0JUdKqoLGx+/WXnRBE9LVT1ov55doMZNP/gm3TKOrYa73JDfms1mtka/FEGXfUBKKIqOANz2+EoO/skX2ChN98rGisvqrjS+XEJ5FED0LKKGacEWp19G812x8dbFUrSVaqW1dSmaq6UbSEyAn10Iypt0MFYPeKdJ6B5lojhcZqUWCSTXv6xaVCX4xNLfY6xwcBMLmYXcgdMtMBtDu/U8o7HZu3TVU3vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cK3yawOEs91B5rvIcjKZZu6wyJGX2QvaCgtTosX7tJw=;
 b=WaW04DPXhwXKA9AifH2t8tqL4POWBf8h4czgQB+bx7gBUl7ROw3U4VR/fswHol34PCeHykngk+QhlW6KUK5c2r2wcTvxwkPPVgjTDAIX/JOw9knZPUyCt4XNnd9oIbruN92jseYo1GPRWeLQcKt7OPjWkUqcvGOVjy9Hchkp/SXJcXuMNSpOxg+VnG/lI6Tdl4fzQ9HlRfCl7FxqdO/xIeiUnCL8VNJl6/wK/oiU8QoBoiNzFms8gY87BLL3wvdxxAkJ0SFtsps0Jy1W3nTupUAnkcJnA41YUA7qkloapobP4bAFRbFSQJ2lzeQXEL+SrDAVDWK+QN4DGjh7uQMPvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cK3yawOEs91B5rvIcjKZZu6wyJGX2QvaCgtTosX7tJw=;
 b=BSVqR9HhsTrbxse+gxSBzSC8d8SDqcftPwCMTr/01WZcF/XCXRE8xNqxX9bLFPRHGPcRofhi0c99v1m1fNNqNitt3L7pau34v74dWXHq0VtFxsKuzv7lkT75uJ2NVOyZKjTQxFWjgz28486zHVeBmGTNz1khYpmKQVlET85Q2Iw=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR05MB5975.eurprd05.prod.outlook.com (2603:10a6:20b:ac::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.22; Fri, 10 Jul
 2020 10:11:37 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf%7]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 10:11:37 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Fri, 10 Jul 2020 17:11:24 +0700
Message-Id: <20200710101128.19713-2-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20200710101128.19713-1-tuong.t.lien@dektech.com.au>
References: <20200710101128.19713-1-tuong.t.lien@dektech.com.au>
X-ClientProxiedBy: SG2PR06CA0089.apcprd06.prod.outlook.com
 (2603:1096:3:14::15) To AM6PR0502MB3925.eurprd05.prod.outlook.com
 (2603:10a6:209:5::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 SG2PR06CA0089.apcprd06.prod.outlook.com (2603:1096:3:14::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3174.20 via Frontend Transport; Fri, 10 Jul 2020 10:11:36 +0000
X-Mailer: git-send-email 2.13.7
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1d42e111-6a67-4e2a-688d-08d824b9a1b1
X-MS-TrafficTypeDiagnostic: AM6PR05MB5975:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR05MB597533ED25F0B74A47A87B03E2650@AM6PR05MB5975.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: p9CBD3pT1upeto2Sav59ZeLypPJB0rZqoOWMqwzvbNYi+XNqM3J4/3or7PeNCAFKo/LmMoTSjck1uIBYpTqG9INfY9sb3gtxlYPWsZYj91Se3P2atLRzyz2D9ouNQkMcig8Vo0NoCxyk650v+dn7Bnw26B260mw1Sgk/Z3uml7FByA0PgPTFSo/j/u/TzEsEN+Py33dFzu75sLgHFPAVYSVylUDW8N149AHD1QBdN93OyjyltxVE9pQKWDldRhIW53mWy04ddqpjJikoqq3tK2gMBkqocGOLkZ81KTp8+HrTxaOCA3AaiIDur+wbMqFuGFlad1PrdNKu93yQ92eLHA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(396003)(39840400004)(366004)(346002)(136003)(478600001)(5660300002)(8936002)(107886003)(66556008)(7696005)(52116002)(66476007)(83380400001)(4326008)(86362001)(66946007)(55016002)(186003)(16526019)(8676002)(316002)(6666004)(2616005)(956004)(1076003)(26005)(36756003)(103116003)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: O1Jyfly92oUgf5Nf+gR/C9nNrB0EeQvOWzqGW9N8HO35HNTFgHEpwVPayL7v6285hBAlPr1wONVXXALl1sSHzdf4mht++Sxqh3hvp2r5bmQoLYdokB24r0vedNoGU88tGkUb6Eg9quBT0gE0Umzym3XDf0lMqXJ/Cd0BxI3KQgu4lSbjntQ86FEpUMoOJjumG67OQMNO1Aqfvzy4AoujqzBTEZr3Qfp6Uji5E4lIyo6gYGskeCQxsgXlAJggzfvejV0cIlopD9bG1jANcxl2wFvpNQuN3hSZDVBdp+3lRUKJKyFIctTVykNfwzJMk7NkOCTbChuWxtP3V2smnzslhg9nW2Xto6VKk7+ijSUF4fxc2RvHz4YO6dYx7Ihwk/uLodOByAODIjYDU7KQoVQzfbCSWD/sN+sWPJn4MSIJFWcW4wMYJLXSiGAO5fXxsb0yL6FMujx9KGwsGAm02128yiwpiJDtL7pWbYdEPCYbieI=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d42e111-6a67-4e2a-688d-08d824b9a1b1
X-MS-Exchange-CrossTenant-AuthSource: AM6PR0502MB3925.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2020 10:11:37.7171 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JmtZ/A5kjmrHb5HyFwuCUkJ8JzKO1yGs0oIERwIofLPnqLzrMxj0/jWY1EqJRZU2crKIBRfOmEGm+vrqj1qT3e8y9aGDTc2BAKVI95EhkOQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB5975
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.97 listed in wl.mailspike.net]
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1jtq0Z-001t9b-Eb
Subject: [tipc-discussion] [PATCH RFC 1/5] tipc: fix using
 smp_processor_id() in preemptible
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

The 'this_cpu_ptr()' is used to obtain the AEAD key' TFM on the current
CPU for encryption, however the execution can be preemptible since it's
actually user-space context, so the 'using smp_processor_id() in
preemptible' has been observed.

We fix the issue by using the 'get/put_cpu_ptr()' API which consists of
a 'preempt_disable()' instead.

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/crypto.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/net/tipc/crypto.c b/net/tipc/crypto.c
index c8c47fc72653..1827ce4fac5d 100644
--- a/net/tipc/crypto.c
+++ b/net/tipc/crypto.c
@@ -326,7 +326,8 @@ static void tipc_aead_free(struct rcu_head *rp)
 	if (aead->cloned) {
 		tipc_aead_put(aead->cloned);
 	} else {
-		head = *this_cpu_ptr(aead->tfm_entry);
+		head = *get_cpu_ptr(aead->tfm_entry);
+		put_cpu_ptr(aead->tfm_entry);
 		list_for_each_entry_safe(tfm_entry, tmp, &head->list, list) {
 			crypto_free_aead(tfm_entry->tfm);
 			list_del(&tfm_entry->list);
@@ -399,10 +400,15 @@ static void tipc_aead_users_set(struct tipc_aead __rcu *aead, int val)
  */
 static struct crypto_aead *tipc_aead_tfm_next(struct tipc_aead *aead)
 {
-	struct tipc_tfm **tfm_entry = this_cpu_ptr(aead->tfm_entry);
+	struct tipc_tfm **tfm_entry;
+	struct crypto_aead *tfm;
 
+	tfm_entry = get_cpu_ptr(aead->tfm_entry);
 	*tfm_entry = list_next_entry(*tfm_entry, list);
-	return (*tfm_entry)->tfm;
+	tfm = (*tfm_entry)->tfm;
+	put_cpu_ptr(tfm_entry);
+
+	return tfm;
 }
 
 /**
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
