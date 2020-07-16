Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C834F221BDA
	for <lists+tipc-discussion@lfdr.de>; Thu, 16 Jul 2020 07:14:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jvwDX-0002oX-P8; Thu, 16 Jul 2020 05:13:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1jvwDV-0002oO-Nw
 for tipc-discussion@lists.sourceforge.net; Thu, 16 Jul 2020 05:13:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-Id:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hky3Eh/7mm2q+1l73DWUUVun4jR+XVyhAjxTU1p88OY=; b=D3rSmNzx7lGDhYnTfya5zSjIhi
 YRqEFeK3hpVq+BAkElZGm+rl5I6IwXP/KHAWx66lCxJtCTETOTEf/djPSJSATmvRgoZBoLI2Lal1e
 JGK6/wBi+kd70p4AnLjROLuZfJIZADPa4v9o4KMg4G17F19K4EOkzLPVgHm2QVKYajCQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-Id:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hky3Eh/7mm2q+1l73DWUUVun4jR+XVyhAjxTU1p88OY=; b=J
 SsRxhgQgJMwbJylSdJO2e7+q4SDKIwicgDllXr3hbOAPVG6hWPmzgbhku0PmmnTsLd0IDEvxLvt4+
 7DKhBcUqIbrx/n/E0O9Sll3RirMHGR1qYY6M9vac1rfDEYlgtGZZNchCResJ1ncTOSLcdQfulnEw5
 BxwD+duV4rw3LpBE=;
Received: from mail-eopbgr30120.outbound.protection.outlook.com
 ([40.107.3.120] helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jvwDQ-009jQk-Lf
 for tipc-discussion@lists.sourceforge.net; Thu, 16 Jul 2020 05:13:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FttbYcmCnJWKJunJIxT9V7MSkwJbJflhFYCGx5mxm89r/J35nnlf2E1cyBiCTblsInAJz8nGwGVIAE62ozxUAHb39gzQaRoZoWHAVbu6Ktdb00RASmM8I5QjzbY/vrRPCs/u1pcwrxglkzvu/fGdeCvUERvr5XjmfUk+eDnAOOeUnEd+X8Gj7/P5Sa6PPdf+p90os9NLOF22z/8huJ4792SeAYQVIzg4/nPxWuk5ed7q5mhMJ8YvT2T9J+Dx3ssbNaSMQy9sB2gU/58zrc+olKJp9ZeSixrE7VmWZ0Lznwwyywb8V7PZzqaytKNJMqobrMyRJuxKOg8+lvpu2JBYYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hky3Eh/7mm2q+1l73DWUUVun4jR+XVyhAjxTU1p88OY=;
 b=DFYSD5QyehucNRkmwKfBngxQA1M3ug+dyN6ODWAp99Vek9m3siSBMsE1qPUuVSpBsI0C3LLbkxonkK7b7C3SRnEUx8R6CBI+7+Ih7SRK2fb3wottWyBUDT83cqpWlxcjPKkiO2fFKuB11Yg5GFFYrf5SFHHDLMekqtjla1E95z3OcNjG4sr9y/wM8TS0mVjs5+PhRdPNRvOV/rfCCH2clHn6Un1JQvmcH6kR+pij4fKZu9gr+TFKD6xVKCizICW7jWMRrtNCwpM0Yyaof2mFkDkqbGYQTeYAjjkTii69PO6OW6smZF6R815bmV1m7qMUtUNvTzxcTQm7L9fVv3A8xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hky3Eh/7mm2q+1l73DWUUVun4jR+XVyhAjxTU1p88OY=;
 b=yHJ+zF3FREdLTeTieKdqYH1uEuDL1YCin+ex/aegixtFW0Bb8huupEmrI/ftfXIW/Kjr9iP7SN8yNwqNbWuWEMp8PJcBSxRd6dOM6CcAxkdJpfueNfvFmSoQBlj+Jm27K+0UTg8L6F8JXulcr51FM/lt4JPP4p5iEPh/MPsfLUM=
Authentication-Results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=dektech.com.au;
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com (2603:10a6:5:1f::18) by
 DB6PR05MB3270.eurprd05.prod.outlook.com (2603:10a6:6:1b::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3174.22; Thu, 16 Jul 2020 05:13:43 +0000
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::89e:5249:aa01:62f6]) by DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::89e:5249:aa01:62f6%6]) with mapi id 15.20.3174.025; Thu, 16 Jul 2020
 05:13:43 +0000
From: Tung Nguyen <tung.q.nguyen@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Thu, 16 Jul 2020 12:13:33 +0700
Message-Id: <20200716051333.7618-1-tung.q.nguyen@dektech.com.au>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: AM4PR05CA0002.eurprd05.prod.outlook.com (2603:10a6:205::15)
 To DB7PR05MB4315.eurprd05.prod.outlook.com
 (2603:10a6:5:1f::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ubuntu.dekvn.internal (14.161.14.188) by
 AM4PR05CA0002.eurprd05.prod.outlook.com (2603:10a6:205::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3195.17 via Frontend Transport; Thu, 16 Jul 2020 05:13:41 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2d9f743d-6904-4882-fc54-08d829470242
X-MS-TrafficTypeDiagnostic: DB6PR05MB3270:
X-Microsoft-Antispam-PRVS: <DB6PR05MB3270A1B7D50E53D23AAD8F4D887F0@DB6PR05MB3270.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:569;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2F9te0ys0aNUIWKYlYvFfJVf/tp5j20xQGbn8KboRJ9kPhxjbCo24dnycRlxAOJtRxrSSK2n6X8NjGvehvh8fP1Msw5IIXcAkJaO6wgOAFQTJyQSjaP6nNDMg9fUfLEVQFVqm2OxLTtkqRIz1E8/VAhd2fRyH4lT0yrFyTLO16xiktcBhNQ5nTFHOLXT34hwqoBKw7FgK4FWUqp0YxWp0SzuDaoBF8lFDqJ/fsNf6cq1ASXQ6+7zE2aBT7QsD0kSZbsgKqz0iMtb1Jy4SeoNvbmXDuhBDO+K5pYj5MQFJDfk0Gr8HjzyXtivguW/wYVj
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB7PR05MB4315.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(376002)(366004)(136003)(39840400004)(346002)(8676002)(8936002)(86362001)(66476007)(66556008)(83380400001)(316002)(1076003)(16526019)(186003)(66946007)(26005)(6666004)(36756003)(6512007)(5660300002)(508600001)(2906002)(956004)(2616005)(52116002)(6486002)(103116003)(6506007)(15650500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: Eqy39UsmFMB/ncJv67yTwr9e2TIL2V9V8cq4GRheEEJaeW6920fTU1oVHfn1IoHIQooTcBankF4IQGlKTVKCrGrAhJougPNaLT8GicX9GUcWKMwyRIgio7/B8c5h3fJI/xhSzfkoYd0Nb9/6OPosrTe6m18/3PqgHMxmkmWyxO8xIFLAzIKhX2aIi36IjnbOc8lsafkCLLe6r5vLXhWPk8Q8SiZ5YyR3gSkFJcdnePHIruekAS+G1x6BTB5yKc3k4V6Pcq/a+DnUXRLSgJljNFkWfe6CfyhcdebCkgj6BZuz7rQe1BOva2n9d0PHHUXD93//qDsIG9t2T80uJZQs2GmiPkHcg7uzoT8VdftkLRDV7VGrO4wX2JI4S4g+emneaJIpROCJyvvl5FiBRoU1s0IgNRlo9dOl3I8ndFzBuX9issxEmwp4slsLgZweIyERR5tkPvHAAVxtzDGzwMiZjeFh6tmlJ6W0BYJlKWnSza8=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d9f743d-6904-4882-fc54-08d829470242
X-MS-Exchange-CrossTenant-AuthSource: DB7PR05MB4315.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2020 05:13:43.1665 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ICkDfwAdjsj/KYXgRj0SnG9X2eqdArURf947FdnMd3rjqCC59EY4sGOiSZF9x1dhi+aijetp8jLLO9HDJBlW+5qhqicNxtJmNweus6wcyC4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR05MB3270
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.3.120 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1jvwDQ-009jQk-Lf
Subject: [tipc-discussion] [net v1 1/1] tipc: allow to build NACK message in
 link timeout function
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

Commit 02288248b051 ("tipc: eliminate gap indicator from ACK messages")
eliminated sending of the 'gap' indicator in regular ACK messages and
only allowed to build NACK message with enabled probe/probe_reply.
However, necessary correction for building NACK message was missed
in tipc_link_timeout() function. This leads to significant delay and
link reset (due to retransmission failure) in lossy environment.

This commit fixes it by setting the 'probe' flag to 'true' when
the receive deferred queue is not empty. As a result, NACK message
will be built to send back to another peer.

Fixes: commit 02288248b051 ("tipc: eliminate gap indicator from ACK messages")
Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
---
 net/tipc/link.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index 263d950e70e9..d40f8e5b7683 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -827,11 +827,11 @@ int tipc_link_timeout(struct tipc_link *l, struct sk_buff_head *xmitq)
 		state |= l->bc_rcvlink->rcv_unacked;
 		state |= l->rcv_unacked;
 		state |= !skb_queue_empty(&l->transmq);
-		state |= !skb_queue_empty(&l->deferdq);
 		probe = mstate->probing;
 		probe |= l->silent_intv_cnt;
 		if (probe || mstate->monitoring)
 			l->silent_intv_cnt++;
+		probe |= !skb_queue_empty(&l->deferdq);
 		if (l->snd_nxt == l->checkpoint) {
 			tipc_link_update_cwin(l, 0, 0);
 			probe = true;
-- 
2.17.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
