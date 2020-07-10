Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1134021B2FD
	for <lists+tipc-discussion@lfdr.de>; Fri, 10 Jul 2020 12:11:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jtq0W-0004tR-Nd; Fri, 10 Jul 2020 10:11:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jtq0U-0004tF-Id
 for tipc-discussion@lists.sourceforge.net; Fri, 10 Jul 2020 10:11:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AWovotjSPvxIno0k2Kr5ym21rj9MclpxhJJvVCZkhgc=; b=XIA0vrNc7ryVkHOYFr4vR7EpSY
 TLL9sc4xPRPwK7ySp9TuYrMDRU+qAiWD2a/c9aOfrwdvpCTbLjSePIwPgf78goUbdy9ktp7CFaU6A
 eEZ2GqLBK1PcksPMEkCAEwjv2EgRfmHBIjF9/sn7qqDOZerMf0wdWQRSIABoBK23fe3M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-Id:Date:Subject:Cc:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=AWovotjSPvxIno0k2Kr5ym21rj9MclpxhJJvVCZkhgc=; b=R
 s+UfQ/HKvi0N5Jztwj+JP7t6ESFwD4DFqQ70i22CtpNWr+etA8PmCnXPOdFZLvwyFVONsJzUBpDj5
 K1Y3uuCKuPKMUJAnONlntfYhG4dbhETd43veuYbk9eg0dlSxo9+Ybn59AmMUkJjvxoiRf4Jtl+8dE
 e2cFKKGE1mPNVjFQ=;
Received: from mail-am6eur05on2102.outbound.protection.outlook.com
 ([40.107.22.102] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jtq0O-001t9E-1O
 for tipc-discussion@lists.sourceforge.net; Fri, 10 Jul 2020 10:11:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eUC9VFPDJLE0cKmY+8zPCa+fZi+hbtnXLU712kz19Qw8A2c2p33GCvNCI+nvB7Ov6BsUejW5EmzfeBLioZdhVHTAexD0ZOFTyMsTP5DAVJcIthHtk8d2gl1KX4b7wrLcoz9hbMsX82dQv5+YUrLSFwjmEVgJCE1APNkBsNGLNLiRb8FJrfqL1xeLIeWsM4KopUubJzfYVOYgOpwCW0qNnyrU0MgUyBYUznP9C7cwsOU69JuG3O2RmauZAjfBjVwNgkT8HG/h8AM3zIzHdDipW9PT05/zRg1HGp5ANuSQUFdOxGxQqr0akJEMqliPlX09vm1Dgc/xgjdbPzm2vQxD7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AWovotjSPvxIno0k2Kr5ym21rj9MclpxhJJvVCZkhgc=;
 b=BSihuC7qt5ukqoZEWwRAS4r0YmAWamLg95kDhQMQrr6a6A7uueXgC+eC70hHT/+CEnjHuhfTVrwpxZ03FW+qM8PLlToxBQTSAIwZb1NQUHyinCiKklIlC6Gl+ld2RHgeiVpCzXqa2NX0pR2YOto8KgVF/kTeMCzzu7H987jrJprXNa5ESI6xOtOl63xSa6YzMXNBC4ka6uKS3LcC9TzkSJ2mWGH6fKDSvn0pS2C16eWmq6DOZF4ZZ9IJ+gURP9M5YZeeDR4tr36bWXlLcGjlvkFDcEuPYIwwhVQNwws8ZOlPJDRncLLNFTQOTmFhGOTqbkvsm55vVI6v2Dube+ZHIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AWovotjSPvxIno0k2Kr5ym21rj9MclpxhJJvVCZkhgc=;
 b=EMfLoCaXHYSbeFEFVR6f6b3ppbbooCeWKxZevRnko8+tlK3tTOTOll8mgxbV/me+8X2J+bUIGxdYdNirgo4T22pQmre3517gr3bUGpn5ZTx+m0xpvszbLmHUpB1d2+8G/rbsSi0xb2mPhYfu+A/opY8vwb2I+xJecCwbuQg+Bpk=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR05MB5975.eurprd05.prod.outlook.com (2603:10a6:20b:ac::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.22; Fri, 10 Jul
 2020 10:11:35 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf%7]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 10:11:35 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Fri, 10 Jul 2020 17:11:23 +0700
Message-Id: <20200710101128.19713-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-ClientProxiedBy: SG2PR06CA0089.apcprd06.prod.outlook.com
 (2603:1096:3:14::15) To AM6PR0502MB3925.eurprd05.prod.outlook.com
 (2603:10a6:209:5::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 SG2PR06CA0089.apcprd06.prod.outlook.com (2603:1096:3:14::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3174.20 via Frontend Transport; Fri, 10 Jul 2020 10:11:34 +0000
X-Mailer: git-send-email 2.13.7
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d13b4278-3acc-4a00-5f65-08d824b9a084
X-MS-TrafficTypeDiagnostic: AM6PR05MB5975:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR05MB5975E34D207AB4A310A024E7E2650@AM6PR05MB5975.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7PNXlX3Y+8VoGWXiXyJPSd4ZLHGouZ6+4seHj8BAqvgWC+sqqMg0pvz/Nbrmloc5maV/DYuCRowTm3/2lvN6GlKLmTsh6Hsby1oEU6rpeVm9qif2iweWLYFZVwZB2nG0HgAlDRvJ1bqJDvSOwyBlnoFxx64upkhXwbBitHSsJr5iHF8rgO5DFHCsfUiTpZPJRJUdwbAoQwFA/x9OJ8Ac0kFjLLPIgBD4zOGBnIm4pgE+lLLjEobv7swEtdGlXdD1xT3J4xp5E7wiu4Xq3zQzWncbKLjPQJ0xHN7yDRAYFia3vxWztMGz7/muTAbcMa2a/+K1X7bIJGbA2het4EsnWQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(396003)(39840400004)(366004)(346002)(136003)(478600001)(5660300002)(8936002)(107886003)(66556008)(7696005)(52116002)(66476007)(83380400001)(4326008)(86362001)(66946007)(55016002)(186003)(16526019)(8676002)(316002)(6666004)(2616005)(956004)(1076003)(26005)(36756003)(103116003)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: msLDJ6FjVKqiTctSQVRszBnp7JVBUlrjkIp42kkHpTI9ftuJNzSZI1RTG5Bu6o9RZ99UJ8+K0HjD+JAVXidDyX/fZz1H2WMIxZjSQfaXOr74wynBk5aAt166KYen6B/3LGC3UGotAqeyTIhkx+3dVn2fGGVQSamrgnwfYCTZw7K/3rCwoUPkMwma8igrBOjy8OrAhjcG//znpRGbbjDBJwP+fIbAMXM1PccpmOjs1HdYbyXNOiWrXQ9kEXTxo8SVPsj2T8VAO0Srq9/zX3UgrPIs2nA3DY/Cx19gcG+t2Ps9/f+gSXw/xfFj0Q0z7riJkevIDJvGK+Xgy/phurbmnLC7+K1prl0/FsnnxEgY3l1lRNSgQzUIwF4VSSoRod47OCcTt7++AFlc4jxGyBB9yzfJ1TfZaDDxM1anPRN4laCMAP/xikRDuYiPI9bNmUSQnaG1qSYmFWXiUGaItkYVP9pVZv5zlgphH9G9HpwrZgU=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: d13b4278-3acc-4a00-5f65-08d824b9a084
X-MS-Exchange-CrossTenant-AuthSource: AM6PR0502MB3925.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2020 10:11:35.6742 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YKWulIOXWZaLtJFZMb5TNndyUtHfMELiXYFTUv14sl5jpXa2Kqx3WnTSTmM0wVAbCE9KvFi3w6FndZMKmOAf9q9uiGuoMc3btcGcn6iqXgg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB5975
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.102 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1jtq0O-001t9E-1O
Subject: [tipc-discussion] [PATCH RFC 0/5] tipc: add more features to TIPC
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
Cc: tipc-dek@dektech.com.au
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Jon/all,

As mentioned, I'd like to share the series that I have added some new
features in order to complete the TIPC encryption:

- Patch 1 ("tipc: fix using smp_processor_id() in preemptible"):
- Patch 2 ("tipc: optimize key switching time and logic"):
These two patches just do a bug-fix and optimization for the code as
a preparation for later commits.

- Patch 3 ("tipc: introduce encryption master key"):
This will introduce a 'master key' support which is set by user as a
'long-term' or static key (e.g. shared between nodes in the cluster in
user control way). It will act like a key encryption key for the later
key exchange, as well as allow a new node joins the cluster while it
has no knowledge of current active session keys in the existing nodes.

The master key setting will use the same 'tipc node set key' command
but with a 'master' flag (see below).

- Patch 4 ("tipc: add automatic session key exchange"):
TX key of a node will now be able to be exchanged to peer nodes (
encrypted/decrypted by the master key) and attached as the
corresponding RX keys automatically. A node can also 'request' for a TX
key from peer whenever needed.

This will enable us to do the later rekeying, and also make a new node
being able to obtain the session keys from existing nodes.

- Patch 5 ("tipc: add automatic rekeying for encryption key"):
Finally, this patch will add the automatic rekeying which will generate
a session key on each node at a specific interval. The key will be
also distributed automatically to peer nodes, so it will be switched to
be active shortly and traffic will be finally encrypted/decrypted by
that new key.

The rekeying interval is configurable as well, also user can disable or
trigger an immediate rekeying if he wants.

Besides, there will be a patch in the 'iproute2/tipc' including the new
'tipc node set key' command options, basically it will look like this:

---------
$tipc node set key --help
Usage: tipc node set key KEY [algname ALGNAME] [PROPERTIES]
       tipc node set key rekeying REKEYING

KEY
  Symmetric KEY & SALT as a composite ASCII or hex string (0x...) in form:
  [KEY: 16, 24 or 32 octets][SALT: 4 octets]

ALGNAME
  Cipher algorithm [default: "gcm(aes)"]

PROPERTIES
  master                - Set KEY as a cluster master key
  <empty>               - Set KEY as a cluster key
  nodeid NODEID         - Set KEY as a per-node key for own or peer

REKEYING
  INTERVAL              - Set rekeying interval (in minutes) [0: disable]
  now                   - Trigger one (first) rekeying immediately

EXAMPLES
  tipc node set key 0x746869735F69735F615F6B657931365F73616C74
  tipc node set key this_is_a_key16_salt algname "gcm(aes)" nodeid 1001002
  tipc node set key this_is_a_master_key master rekeying now
  tipc node set key rekeying 600
---------

So, please help check the patches and give your comments, thanks a lot!

BR/Tuong

Tuong Lien (5):
  tipc: fix using smp_processor_id() in preemptible
  tipc: optimize key switching time and logic
  tipc: introduce encryption master key
  tipc: add automatic session key exchange
  tipc: add automatic rekeying for encryption key

 include/uapi/linux/tipc.h         |   2 +
 include/uapi/linux/tipc_netlink.h |   2 +
 net/tipc/crypto.c                 | 986 ++++++++++++++++++++++++++++----------
 net/tipc/crypto.h                 |  41 +-
 net/tipc/link.c                   |   5 +
 net/tipc/msg.h                    |  10 +-
 net/tipc/netlink.c                |   2 +
 net/tipc/node.c                   |  89 ++--
 net/tipc/node.h                   |   2 +
 net/tipc/sysctl.c                 |   9 +
 10 files changed, 862 insertions(+), 286 deletions(-)

-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
