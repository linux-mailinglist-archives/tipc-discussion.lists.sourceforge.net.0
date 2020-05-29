Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6B31E776F
	for <lists+tipc-discussion@lfdr.de>; Fri, 29 May 2020 09:48:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jeZl1-0008Hj-VS; Fri, 29 May 2020 07:48:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jeZkz-0008Hb-JK
 for tipc-discussion@lists.sourceforge.net; Fri, 29 May 2020 07:48:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=afFrReciIQGJHf9miylU3RwMSxoIfaFqyiZIRta1+Zw=; b=Uu1FYh4y0euwc7J/oqs8T5diUi
 dOmfjBK9Rv3rOkC0iIMTwtchvXYlkq9YMo6mi+YzHZLGM9PQM2Lhxda/PahNV/8GyMa9MNo9pmjnA
 1qw0L1700Riy9d1jRjjYjzsR9tYFDcfas2m6Rl23TAh4nPupIm95fmfLQ4k6BdJBYoaM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:References:In-Reply-To:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=afFrReciIQGJHf9miylU3RwMSxoIfaFqyiZIRta1+Zw=; b=F+MVMJHk9UKv6kbtFFYzWe9jhX
 Nqw4nZCZWc78n9tQzFw2r6v0HsrRjGe+yuvcW4NgWw9QYS/13AOX8CM5W8ARJrGxA6Pn+MsBmPcta
 Rhn2gkZichRismYuTGgHfaHxFRhO/kOT/YwT9iLzjmpERQHFNYUd6buZnVoQGmrBpKY0=;
Received: from mail-eopbgr130097.outbound.protection.outlook.com
 ([40.107.13.97] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jeZkx-002RCO-Ka
 for tipc-discussion@lists.sourceforge.net; Fri, 29 May 2020 07:48:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TxFXP+OLZhXSSX5zSidT2C1bWqXG1RVSKyKojQ4SntW5GypbwYVaynuM/PAhln1mMfDibG574ntBnf5cuFGK/4z3/QOWH3RWCCFeM5tqu26J946uj9Bt5EbDosrWDRLrioyOMlHFfyKaA7DqHlnkLlKRH/ydvIjF95RcXhvIliEEbnToKN7TepVIRyVU+rPK9zbCg1Hj5Bcwtl5MZKs2jDA2ZRvmdlWi8zPWsF2M77gSVn4suHE+eL6Y9zL/qIZzEZrP4ITBX+PRYeap+ZrrkyAGGpcv+NvYb2YCqm/cQ6dqrhmpHvoaf7nmj0KuJ7fMCM7W7nKB01SvwhTGs+rwUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=afFrReciIQGJHf9miylU3RwMSxoIfaFqyiZIRta1+Zw=;
 b=jfLb+hyiHUcZv6G6yB+Kt58vogYr+t+yCWZnAsjvsTwReXGxRULH3UmBEj5cc3i89/RgDByxlEvZc4Kqzi98Oryriv4xdH0vx4FWUuPFYWUnu3LeV5119Q+oYGFAujmpB2tzfdeeB5CfO9K+Dtz3RGt3jBS2+maPwI2qwM0CotcXDsjcnXn8t4K6M4fwRvXz/zyHwnHc4Wb8cjxvEqmD6lCXRhkqEAKnro79L8nsRMqixDJ+qgPfhT6oYR8KFLhLTIlMCq2Kpc9ujAGau0DDKpbxrfow2romLHO8FGq2ci34d8w/SVpaLgB+qcyIOM2CJ5PLSiYow2GD79hU3ki0MQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=afFrReciIQGJHf9miylU3RwMSxoIfaFqyiZIRta1+Zw=;
 b=csLRXmRFHRYkVVxMNlCdtqwkJlZB9vmFEm3zw+MsXp3rKgj/ibpuf+lg1+d4OMNJ20zZcxngWjrRli3+RjGoBfgJ6E2fJ6JB5ANiR7jH+NzCoIWKkCgLPMbIzHVTaesVfl0BGcF6gtaVbkCnzi6syw+K6outRZ+HpPVODGYxpBE=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB3926.eurprd05.prod.outlook.com (2603:10a6:209:c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.21; Fri, 29 May
 2020 07:48:34 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf%7]) with mapi id 15.20.3045.018; Fri, 29 May 2020
 07:48:34 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Fri, 29 May 2020 14:48:16 +0700
Message-Id: <20200529074816.4585-3-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20200529074816.4585-1-tuong.t.lien@dektech.com.au>
References: <20200529074816.4585-1-tuong.t.lien@dektech.com.au>
X-ClientProxiedBy: TYCPR01CA0009.jpnprd01.prod.outlook.com (2603:1096:405::21)
 To AM6PR0502MB3925.eurprd05.prod.outlook.com
 (2603:10a6:209:5::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 TYCPR01CA0009.jpnprd01.prod.outlook.com (2603:1096:405::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3045.17 via Frontend Transport; Fri, 29 May 2020 07:48:31 +0000
X-Mailer: git-send-email 2.13.7
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 51818ca3-cac3-428e-ea32-08d803a4b05e
X-MS-TrafficTypeDiagnostic: AM6PR0502MB3926:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0502MB39267BBEEC8CE16CB068DD45E28F0@AM6PR0502MB3926.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:389;
X-Forefront-PRVS: 04180B6720
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qznQuhp1IYSJlNu1ComlXmoGSA8A2x/3WeX215E1BNcP2Jggl0NsSia2KxBmn3UYAYRLyuMnCeDJKlAYn7xtYGPfy9Y2baldb0t95CvOqua28qLdO12nuB7IxXvE1olr5Uad3p0N+vMLNl6tCLI8ed0oQDFBbMQQxkGbL8rBT/htI488EmWD3RJzWT+g4OSB8iVUTyusgy76tcKa6CDJmo4qT7I+dcJg3nzlxoeHZ0oryLUDsrZ1vL1SQjX45qz18Hl/9UUQINA3EBaOWmSaZWTTrGx5ecWGPfr47k4RnZKqG5c0TO2G6s8+UgwocAfC
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39850400004)(136003)(366004)(346002)(376002)(396003)(86362001)(2906002)(2616005)(956004)(478600001)(186003)(16526019)(26005)(83380400001)(316002)(36756003)(4744005)(8936002)(1076003)(7696005)(66946007)(66476007)(5660300002)(52116002)(66556008)(107886003)(4326008)(55016002)(103116003)(6666004)(8676002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: AFlKHevZfvc1RgPyv80jVxV/YMMZOxwqXgi8pVyfQgtFgngZ24WlR7IPXHSKpBisG13GV3ViVo03usMX1DrjcEs3xTR9HgchNRaaYQVDRdJIIfXJ39/nvzgAeJc3lQY39zeGYvaPQ5tUhIjyUfbr2Kq7TawXKIlmYtHopFuuFi3BAEhv5WoVY3FvvAocEJFYcGsYPlM7JDZVj/nI4wsN51n+sVsMlPdIzAfmcdbceZ5U2kylYlqn13Dz7+4PqOKyp5u+0WK7Fm8MhAHZy39VaCeLnWlEYM3lyF3YuGCyC/rJbaaB3mBk/85GV6c76Yk10RXMb/KE/DA5bU/UrYVsc3u5xOd9IeYW5RQMGzu6dpV41n+5oQyyEEEyvbF6oyCpU8r3ikuepZoMSPfB0MY+g8VcRBn+/QdQSppzq8F2tSPHfCsaTitn0Z0iv0a1ZgMekWMWl9/Ymw+5sl0pwHHLwY3Ikhnq+JGGP4CIW9X3000=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 51818ca3-cac3-428e-ea32-08d803a4b05e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2020 07:48:34.5323 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K8B7IQ8pb8Rmz74UK7xTfaqzP+e/++IijSfPMMlrNDXYzpL4BJPfBqfPolsmBf5WOcAbtAOQBQvHafzVi65GOLyFrw0hlJLU5n3D02o6eGo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB3926
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.13.97 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jeZkx-002RCO-Ka
Subject: [tipc-discussion] [net 2/2] Revert "tipc: Fix potential tipc_aead
 refcnt leak in tipc_crypto_rcv"
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

This reverts commit 441870ee4240cf67b5d3ab8e16216a9ff42eb5d6.

Like the previous patch in this series, we revert the above commit that
causes similar issues with the 'aead' object.

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/crypto.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/net/tipc/crypto.c b/net/tipc/crypto.c
index 8c47ded2edb6..c8c47fc72653 100644
--- a/net/tipc/crypto.c
+++ b/net/tipc/crypto.c
@@ -1712,7 +1712,6 @@ int tipc_crypto_rcv(struct net *net, struct tipc_crypto *rx,
 	case -EBUSY:
 		this_cpu_inc(stats->stat[STAT_ASYNC]);
 		*skb = NULL;
-		tipc_aead_put(aead);
 		return rc;
 	default:
 		this_cpu_inc(stats->stat[STAT_NOK]);
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
