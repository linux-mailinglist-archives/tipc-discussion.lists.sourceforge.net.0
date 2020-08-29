Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C32E3256B84
	for <lists+tipc-discussion@lfdr.de>; Sun, 30 Aug 2020 06:41:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kCF9X-0007qE-Rq; Sun, 30 Aug 2020 04:41:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1kCF9W-0007q2-4T
 for tipc-discussion@lists.sourceforge.net; Sun, 30 Aug 2020 04:41:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Hrhpv5s0y9SJkY1M0Jh0+fer3ifdBTDVkJDihh5YPN0=; b=Yp0JfmT4WsBOCcu6va4V8EBxuG
 Yex4SCllDBzJTCU0nwQ5YsUtXr5/GjSZKq1jIZwNgLIgkJia01BzZbHnubaCzMw9WP1NKb/B70Yyy
 hR4pFET97VCb8IrQZVSgHHCb+duR7P7nwdXfBHuAv1HE1qwMb3vw+vQCS5xh0QLLi410=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Hrhpv5s0y9SJkY1M0Jh0+fer3ifdBTDVkJDihh5YPN0=; b=W
 Y0nImOOpXRBU3l0/xsA5bCHd1JHyh11HADcAdLdd5A781V9WSN2lMbkFLWYp2ZPfpNT2xnSJ4WsOK
 7ll4bzCvVAd6GKUbBPDIpDct3J3Tt6QnvaQIhFVWCQDzHvOwbwZAQXihDiOpbphgG8tqVZ2J9fa3P
 U15y8mDCjPJG1+qE=;
Received: from mail-eopbgr60104.outbound.protection.outlook.com
 ([40.107.6.104] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kCF9S-0057aC-T8
 for tipc-discussion@lists.sourceforge.net; Sun, 30 Aug 2020 04:41:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jVKVZ159zGUzFJAG54EAkCSZeZIuJ4zIy9022rNrQf6G6yH35PneGaE8Wxs1OShE5kS07NabSqBAksXmNbOMrHXYlsiQvYet3DZlzqdIPCWI514n5s3hF0x1qLj02THMpjZsKYD2mH5qzQ+oGb9C1b60JC1L6pDC3aVZjZmT3vPgH0uf8v0hhwd17OmryahWWRRWH1oUhgR9f+avnbIhPSAwpH3AhY+VnM5Iodf3AaNlMw4NVAaNShOEeBM0lnJNxxFnEUxqSUZj9yNjIkAV6/QEJ0nMn56gprqR9L1SW2x2LOEu3yBy7dya0Ylo8HHIY322J0vPoTKsV7MSlHCA/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hrhpv5s0y9SJkY1M0Jh0+fer3ifdBTDVkJDihh5YPN0=;
 b=Eypzjhpaeht7yGSx4pl1niFIlNIWY/zB+bBaY1/PhbDgHiOAQbmI8p1UGSrweOzXK7cUitJtvi2yJ6qR3yUxmdeoo48Q3Rjzu6H0L+u8ZK79gUqcE8GMUgnGped+54zTEe9w6bTZadK5F70aS9KCiX0nRPq0EToHQVyYf3VKNYiEMR/6uXAFX3yRdkcZdGPp3Zy4/3iYeiic6ncfYuaaVQmGJz3BLgOjmpc3hvHWky4rC4RewzEz7Yz+FxPGLsIWQlM3547tNwTPUqYLMa2c5UrmfUTLvkajJHuq7WVxaeT6CJwWwv76T6RyJtT+IAFyfPCdQ9rpciy7utG8aVUicA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hrhpv5s0y9SJkY1M0Jh0+fer3ifdBTDVkJDihh5YPN0=;
 b=J37fM759G6w2GueUQS6h+xEKjDzjFVtqJKWyiZqEoXUI4cTuoyADJ8Md1wzvNH6Xj9Ru+xxAlkyLneWQHnHEQUvs8En3U3kDRT6GdWwd3FjBd5YwNNAsv9Le+mUk/nbKKo1LaLGQuGCzN8h1s7LsUbIZvRDCMxQYr1N8pAxhU+U=
Authentication-Results: davemloft.net; dkim=none (message not signed)
 header.d=none;davemloft.net; dmarc=none action=none
 header.from=dektech.com.au;
Received: from AM8PR05MB7332.eurprd05.prod.outlook.com (2603:10a6:20b:1db::9)
 by AM0PR05MB5105.eurprd05.prod.outlook.com (2603:10a6:208:f4::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3326.23; Sun, 30 Aug
 2020 04:41:03 +0000
Received: from AM8PR05MB7332.eurprd05.prod.outlook.com
 ([fe80::64de:d33d:e82:b902]) by AM8PR05MB7332.eurprd05.prod.outlook.com
 ([fe80::64de:d33d:e82:b902%7]) with mapi id 15.20.3326.025; Sun, 30 Aug 2020
 04:41:03 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: davem@davemloft.net, jmaloy@redhat.com, maloy@donjonn.com,
 ying.xue@windriver.com, netdev@vger.kernel.org
Date: Sun, 30 Aug 2020 02:41:53 +0700
Message-Id: <20200829194157.10273-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.26.2
X-ClientProxiedBy: SG2PR02CA0040.apcprd02.prod.outlook.com
 (2603:1096:3:18::28) To AM8PR05MB7332.eurprd05.prod.outlook.com
 (2603:10a6:20b:1db::9)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 SG2PR02CA0040.apcprd02.prod.outlook.com (2603:1096:3:18::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3326.19 via Frontend Transport; Sun, 30 Aug 2020 04:41:01 +0000
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d252c960-43ce-450e-8120-08d84c9ee693
X-MS-TrafficTypeDiagnostic: AM0PR05MB5105:
X-Microsoft-Antispam-PRVS: <AM0PR05MB5105487A6CE7DD997CDBD615E2500@AM0PR05MB5105.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iKcbBlOpptBGPApVRY3GjiQj/WPtULO/KPbM6Hb3Y7pFHGiTixzyAW/2S2zVOIeYkT9WEtjEzViddsLmoSmaaWQYthBJG7UQfVhGN9PljfI3hdAaQ4+vZqvS7g3ZfTLdwKZ5ZJxI43KqeIljNDcBZ1V4nO8DOFdAazmU/5XDr8czCdx+0VH4DNs7uW7Cjt1/ZKViqkimniuJNvy9xRpA+GBVYRvuSrBv8Tez1nIYBC5RsgxaRk3+dFJSbQXU7U6aMMts+9ENFRqM202Z7QrmKKEytSyN6RcKZ0RrjT0MpuYNy1UHF8tf9zg9dWoUj1z2
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR05MB7332.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(346002)(136003)(376002)(366004)(39830400003)(36756003)(86362001)(16526019)(2906002)(478600001)(26005)(186003)(6666004)(55016002)(316002)(66476007)(66556008)(66946007)(8936002)(8676002)(1076003)(956004)(2616005)(103116003)(5660300002)(52116002)(83380400001)(7696005)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: lo5OlrowGz1zuUfuGidtdzsopheyA7gFUTKsMTNdRr0GHlupd6ESBKYmEeYvkR28xR5Mdu5cUhOlXllHDVFo2X3pKxM/JN/1KSYwavqKKj4PPpJhg8AFI7vodZ52KEs/GrJGN2JDdGlyabdAOSS04sUai3zBVLEGelcXlWtknIaV9X5iatC2DT64XkGe2gHKKffjpEW5V7B3Wo2KS9Motixh/tZ+V+ImmVpveziBEVHJI9y7abBhVE4FGSOic5qfka2Wp9j4ekf8P25yrnXyrYSIFxQzamfQ4jEorBD54hiVYUvRxewpgyxqFeJ69iqzTu/dQ/2h0VXlw4CVYc+cj4v1trRzuBKd3zwlnC/VOqRw4QYfeuvwCSY9ylmKXYPFunLH3KB3a8R9deYxnS9QeBX9/TwCpspe8mRyHrxWplmfqtZmaTo4rEy/mMdyaD1yKkpV+gantFj42EM2U8Tkj97uLbl7zsHSwo1fskptK/xkZ1sIDY7TT7hMdMSj2BjSXiYFNX711WgNDY+/NbTr3d1n28k+vx7dCaGal7DF5VCp/OmWziS++bPAkOQZxxmBROyjUuRnqz3y5BWD8Tj/3TbsUvXhb5eI4C/su7wCDaC0UjHFBSmWuDYRa3g4r4j+p2qj37zeMgOpvX35Mr+VZQ==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: d252c960-43ce-450e-8120-08d84c9ee693
X-MS-Exchange-CrossTenant-AuthSource: AM8PR05MB7332.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Aug 2020 04:41:03.1105 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Jtpo2zP7BFHpJHgiXTOpEjCfeqrA171miu0Mfetpm8CCj2YNDY0QHl+AUNJNEsukp27U84gVEHlQ4zUCokzLDm1z9wn5bHqdxyY6uuWgiOs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB5105
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.104 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.6.104 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kCF9S-0057aC-T8
Subject: [tipc-discussion] [net-next 0/4] tipc: add more features to TIPC
 encryption
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
Cc: tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

This series adds some new features to TIPC encryption:

- Patch 1 ("tipc: optimize key switching time and logic") optimizes the
code and logic in preparation for the following commits.

- Patch 2 ("tipc: introduce encryption master key") introduces support
of 'master key' for authentication of new nodes and key exchange. A
master key can be set/changed by user via netlink (eg. using the same
'tipc node set key' command in iproute2/tipc).

- Patch 3 ("tipc: add automatic session key exchange") allows a session
key to be securely exchanged between nodes as needed.

- Patch 4 ("tipc: add automatic rekeying for encryption key") adds
automatic 'rekeying' of session keys a specific interval. The new key
will be distributed automatically to peer nodes, so become active then.
The rekeying interval is configurable via netlink as well.

Tuong Lien (4):
  tipc: optimize key switching time and logic
  tipc: introduce encryption master key
  tipc: add automatic session key exchange
  tipc: add automatic rekeying for encryption key

 include/uapi/linux/tipc.h         |   2 +
 include/uapi/linux/tipc_netlink.h |   2 +
 net/tipc/crypto.c                 | 974 ++++++++++++++++++++++--------
 net/tipc/crypto.h                 |  41 +-
 net/tipc/link.c                   |   5 +
 net/tipc/msg.h                    |   8 +-
 net/tipc/netlink.c                |   2 +
 net/tipc/node.c                   |  89 ++-
 net/tipc/node.h                   |   2 +
 net/tipc/sysctl.c                 |   9 +
 10 files changed, 851 insertions(+), 283 deletions(-)

-- 
2.26.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
