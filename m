Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4B72702CC
	for <lists+tipc-discussion@lfdr.de>; Fri, 18 Sep 2020 19:03:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kJJn7-0007Iy-GL; Fri, 18 Sep 2020 17:03:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1kJJn5-0007IL-V7
 for tipc-discussion@lists.sourceforge.net; Fri, 18 Sep 2020 17:03:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y/zQYdbqatBhniOA1ZS8hg3evtPkXcUQlTLyccTb60w=; b=auq3wuCls43nThd7csLpBMfaTd
 xm+HuX1ssci3vJVotBFtJx7mMUAkZcr1TT/UwFbkYJ75o/ZADbSTAsMD09VkDJzirnN8SJARGlnlj
 YHJHOInrUa+298gqEAW8AKtnFQN/Q8WEHNJDPuF8oHjF/JsdsBUxby2QFyFzkYO1+E9M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Y/zQYdbqatBhniOA1ZS8hg3evtPkXcUQlTLyccTb60w=; b=V
 IfcOVyg5zxJN22SK3Xc++Wt9cUkoGmatTG85nQc23vzXY8oSLfED1YBPzRDNWa6+XSuO8ll9k9KOd
 BebPZ2LdfwgatJA0wQJVi1JYWC3+/oYzL2PdPZvvX0+57piAKMgVn9RL5uYrOhspCak2jxmR6j4MR
 /e5a8AvIbomEu+sA=;
Received: from mail-db8eur05on2136.outbound.protection.outlook.com
 ([40.107.20.136] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kJJmt-00ESdf-Sa
 for tipc-discussion@lists.sourceforge.net; Fri, 18 Sep 2020 17:03:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Onkhz5Zy1S2MoNnmYAAUY5ztqhJtuiXYW7M0xL4gvUsI8bsZGWI9qzOKyyICSFAeyoJ6XznTRe14ZLJ0lkXE6JHWWod7nqbrYZCpeUzNWneo/NaEdFRTM0D3ktiNq0kQmW0q9rI8WrN5GSGLiGTco0UP1mMd0tRHi/YrKMU3FBSkPkT6BYuh+pEhb7T6tLA0TA5g+pUi3GqOOjfxwuZUsDCoj2ckfN0FWhLdv+QSj2/noToyWGmB+ko5JGQtypGcVejQ5QXTaLD411MjL9YXUwfCf6B6++St0YWvh+r2vcuwJa3myHs1p6rZutDRf6JgbD5K4BlkfN4Bvmj6Pld3ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y/zQYdbqatBhniOA1ZS8hg3evtPkXcUQlTLyccTb60w=;
 b=afm8E6IWLNkGRXn63ZVx2Mh9L4BzEVnB3896TbjjUj9oL/8bTvmW+OdIfOclaf+tLYb9xrcrqXMGOLiGOZSdD/8dM+HIJgJJji/oNVWQpLQdcqbGfm5+/P3938+Rd1yq2reRNV3IkxJ9SraUeioygo7admO5bvvZZAYLmleptOJxoypaILKthOPpwFtiQh0mJNdparnoN+687UL9zS8FHNcL2Z0aI0FA5juaLuWCRO6mBDgXRjA2A+qo5Owv2kaDI31sRgKc003Vyf2sGzZQmxDSe3GgOLbftxI2FutwC2K5nekq8j8kCaoRzIXnS8uasL607rHppdUeDtVH916sMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y/zQYdbqatBhniOA1ZS8hg3evtPkXcUQlTLyccTb60w=;
 b=MpvbPBdmhi51jvwTOGZ2rf1y3ufsF4BinLmRuLa8lorOEWVeFvs0ByDEp0FYUEYZWYhkyR7c6Aga7Y8IBKzKo4WolqYNoFq8Ay37/OiXfrF5T2BmLTxrrO5Yp9rO9tIuY5lZFZHCdRfdYqvhJEeFKge4qAo1+mvUjb9qvSsMWrM=
Authentication-Results: davemloft.net; dkim=none (message not signed)
 header.d=none;davemloft.net; dmarc=none action=none
 header.from=dektech.com.au;
Received: from AM8PR05MB7332.eurprd05.prod.outlook.com (2603:10a6:20b:1db::9)
 by AM0PR0502MB3827.eurprd05.prod.outlook.com (2603:10a6:208:1a::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.13; Fri, 18 Sep
 2020 17:03:00 +0000
Received: from AM8PR05MB7332.eurprd05.prod.outlook.com
 ([fe80::64de:d33d:e82:b902]) by AM8PR05MB7332.eurprd05.prod.outlook.com
 ([fe80::64de:d33d:e82:b902%7]) with mapi id 15.20.3391.015; Fri, 18 Sep 2020
 17:02:59 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: davem@davemloft.net, jmaloy@redhat.com, maloy@donjonn.com,
 ying.xue@windriver.com, netdev@vger.kernel.org
Date: Fri, 18 Sep 2020 08:17:25 +0700
Message-Id: <20200918011729.30146-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.26.2
X-ClientProxiedBy: SG2PR04CA0164.apcprd04.prod.outlook.com (2603:1096:4::26)
 To AM8PR05MB7332.eurprd05.prod.outlook.com (2603:10a6:20b:1db::9)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (113.20.114.51) by
 SG2PR04CA0164.apcprd04.prod.outlook.com (2603:1096:4::26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3391.13 via Frontend Transport; Fri, 18 Sep 2020 17:02:57 +0000
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [113.20.114.51]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2a8b16ac-07a9-4180-0af7-08d85bf4b240
X-MS-TrafficTypeDiagnostic: AM0PR0502MB3827:
X-Microsoft-Antispam-PRVS: <AM0PR0502MB38278FDC8BFBBBB81863DD42E23F0@AM0PR0502MB3827.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FVamIJJNgy8df0HxOzbhU2mxEOeJilhUFCpPeH1wHllceG+5LppSwD8nTUEjkx3HULRJ3VG2qDuRr5Nj7OxJlRIhyeHI7OdG8p1v+QOXoYNRF4cPRx0GZFUD69NJsTVUixALHT2BKxpD2HldDgiRJXwjRBbNYMMt3wAY5wWM227+r5qTsfPh3/eESsoMVLlQyEbs9m91Cd5bp0nN0KYTdEPTP4/7vpAL+OGJZXOR3dExrurYSWJFdlprj6RDI/0nmm10GMNppyROnAf+UL2PaFUCI6GWdfI7DOc+zLz3Rl/2lTTMQHDPHvMJnbOZJDqb
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR05MB7332.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(39840400004)(346002)(376002)(366004)(396003)(2906002)(103116003)(36756003)(7696005)(55016002)(26005)(4326008)(8936002)(52116002)(316002)(16526019)(956004)(478600001)(186003)(83380400001)(2616005)(1076003)(86362001)(6666004)(66946007)(66556008)(8676002)(66476007)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: 9HrjrrulP9JbmLsFTswXbpjx3h9URBipezCORllw0L1AihnVK9Z0/VjOY096h5OpJgfcWZyD6RcJFPxMkm6GIuFcICey0q5H5WKoutmEnVC6YglFbBYC2AMNCYdVepmhjeGy/NJqLpLzdDB0x/5bDSucu3fqMjJuppI1NIGUK1xmjz7u43wHunafIJCeZJNf7Grd8ixFAKTq3cszUVUJmLJoOomnUsOAGoCz3niYXFwou2bbM3tNxwuNY3+iYDWvG2jMp3CV93OO1oLRVxGFKbEK5jMQ312liocV8XCtOy+p8fWuYJ8FG3TnY6/OGSGX/5I5J5CTw6gQ3t2YVcXGc/8o2duaC4/xFqElBRNmmduNoMeqszOvZttASIPMN6Ydq5nRiuLmDKuAIFQh9MU9y48S4YSnwMMR8uEb70UmCl4rHUxaNPdsr9zDZSDbSfP7dLBV9d45uYFdC6NUvPjoIr5Mk3vvlzxrOWKxgV2Fk6oMl4Xxo3UnpdWN/2xfcxxwX9d+JOO6flZJM4P7clmgQ/t3AbEB2P3uDVvBzpvWqdKOGErnDEupgdIhGPXZ5GOOwLx/PSrdQnj2YelBRMYxRT9c1xp3+NRVqFcfsGCQ1DXKx6nkM3sH8j6A6d1rEKDGhup11lyZlWK/Xsc44riZaQ==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a8b16ac-07a9-4180-0af7-08d85bf4b240
X-MS-Exchange-CrossTenant-AuthSource: AM8PR05MB7332.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2020 17:02:59.6671 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tkUXvh1/rd3eyzPR4hM4eUaekC7y6faS7R66rh9QJ1klKooFuUmHdQE3IlZmstDNUgAlU9hE05R7pTob8z2sWkD0MdSsbiNye200+YGOI/Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0502MB3827
X-Spam-Score: 1.7 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.136 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 FORGED_SPF_HELO        No description available.
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kJJmt-00ESdf-Sa
Subject: [tipc-discussion] [net-next v3 0/4] tipc: add more features to TIPC
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

v2: update the "tipc: add automatic session key exchange" patch to fix
"implicit declaration" issue when built without "CONFIG_TIPC_CRYPTO".

v3: update the patches according to David comments by using the
"genl_info->extack" for messages in response to netlink user config
requests.

Tuong Lien (4):
  tipc: optimize key switching time and logic
  tipc: introduce encryption master key
  tipc: add automatic session key exchange
  tipc: add automatic rekeying for encryption key

 include/uapi/linux/tipc.h         |   2 +
 include/uapi/linux/tipc_netlink.h |   2 +
 net/tipc/crypto.c                 | 981 ++++++++++++++++++++++--------
 net/tipc/crypto.h                 |  43 +-
 net/tipc/link.c                   |   5 +
 net/tipc/msg.h                    |   8 +-
 net/tipc/netlink.c                |   2 +
 net/tipc/node.c                   |  94 ++-
 net/tipc/node.h                   |   2 +
 net/tipc/sysctl.c                 |   9 +
 10 files changed, 859 insertions(+), 289 deletions(-)

-- 
2.26.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
