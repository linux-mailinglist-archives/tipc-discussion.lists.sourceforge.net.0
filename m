Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 761411C3880
	for <lists+tipc-discussion@lfdr.de>; Mon,  4 May 2020 13:43:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jVZVf-0004Vv-CK; Mon, 04 May 2020 11:43:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jVZVd-0004VS-7K
 for tipc-discussion@lists.sourceforge.net; Mon, 04 May 2020 11:43:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ukt8nWYr93Ea3VL1mmZndt8ZvqJXkctQVLcSl8lyuiM=; b=YCfwmGz9VvCaodTkMbpBWJiq8u
 eqzaEekF3NQPLHlGfd7La/CHNHaKKqnsImxh1C8aUImxjox6ZWE4cSYoa+s/V9Ir1NLl63bMqKx8p
 dhPw/+LbAzcy2+coLW3iKNLaa77H/V/dEi2tkM5JoENkPzMpJL3TH8WZx/lj+vHL1JsI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-Id:Date:Subject:Cc:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Ukt8nWYr93Ea3VL1mmZndt8ZvqJXkctQVLcSl8lyuiM=; b=i
 uSi/7cTUHFciTCi/0yOTQpEd9cgww+wLSbzfx2AYKyG/spdlTPW/6NVfsPqOlygV/g0eik0/yAtsT
 2ZDEktgdNC0r2Pi7LND80r7Qvf4QEERZ439i79pKmtKHG7zNPdkBtKuTLLMlLLWSxBYfPENg0UJgK
 ywZt3g9/RneWduxk=;
Received: from mail-eopbgr70091.outbound.protection.outlook.com ([40.107.7.91]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jVZVU-006gaO-O1
 for tipc-discussion@lists.sourceforge.net; Mon, 04 May 2020 11:43:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jdBdB5PKsQlTPgKvNnX89/fgA85YWPV6zEaQxY9cBuEub22/iDexM2x1hBQgUU+3B9pl8YY2TMc1Lfw592VNVqI3ccNMEe2ca6j9ZK8Y8yndu6cDJotDUMNpJA9Tzn8OkHb2v2cK88Rkq8A/XKMW9GFRQe9WBuE04OcdovaFEkV9YKsMKU/qLXd0ZvfkEMFXA+O5VvtvnwsQEYcyziHkkxkzk1RFS+vHtfc8gjtMOHWGhqnNp5UvA9xhbGkhX3C9YMW1unGBbkDy84mjFFb7/LLVWlg9rmL7oSYmGgHT+5aHAslh0wLT8xlOQNpZM1e7pw60Pl6gRjuzhrdUl+ltfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ukt8nWYr93Ea3VL1mmZndt8ZvqJXkctQVLcSl8lyuiM=;
 b=QAYdTt41ZGqk98jGf/X0La6k+NIdrhphWlU+j9xp/jYl0WWZoX8MDYYZGX5hsiR41SvtL9cv5lwvl2knlN9vruajLuaYJMTWPFIf/JYvef5I0qZqNn/m+1X4DOlQ+Gge4WH8Tn+xRk1ipcASpb2+nkTLeukzg9i5oOCmWH08/DSO2+/ts/ex1W+fbZJqSHWESxDo16WFxzyejbeOt+Tj3FBwOR3z7x0Kh7pSQU4GGYm8vnmyK7otdgQQXiLBQ00AJBkSR5l2O8xj8KfU0b6cGQtiyYxnLBeFC7n+ZsobkfwN/YKAzt7i8P/fcbkL+UOwMSU/va0cppR+pvFujKcoBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ukt8nWYr93Ea3VL1mmZndt8ZvqJXkctQVLcSl8lyuiM=;
 b=rFvW9iZsrQYp6bjEB6F2aWmDZuylgZUc6OkUBtgV8m7Tp4h1w5kXOI2J6Ddz5M38QF+W1cdZP3nSiBkUvdfz97s1VsIX8x8tCKryOSM4TuiH8fZF6qrqHdAm4cVVY7PPt36xmRomDipfAh6dYxedewU/mk1C2gi0ytrDeVSbe3A=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB4021.eurprd05.prod.outlook.com (2603:10a6:209:1f::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Mon, 4 May
 2020 11:28:36 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c%6]) with mapi id 15.20.2958.029; Mon, 4 May 2020
 11:28:36 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Mon,  4 May 2020 18:28:24 +0700
Message-Id: <20200504112826.11186-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-ClientProxiedBy: HK2PR02CA0211.apcprd02.prod.outlook.com
 (2603:1096:201:20::23) To AM6PR0502MB3925.eurprd05.prod.outlook.com
 (2603:10a6:209:5::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 HK2PR02CA0211.apcprd02.prod.outlook.com (2603:1096:201:20::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2958.19 via Frontend Transport; Mon, 4 May 2020 11:28:32 +0000
X-Mailer: git-send-email 2.13.7
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 692b022f-703e-4a62-d5fd-08d7f01e47de
X-MS-TrafficTypeDiagnostic: AM6PR0502MB4021:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0502MB40216B877AEEB6F0A8C519BDE2A60@AM6PR0502MB4021.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 03932714EB
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: a13O+X3dDe+c8tPfaeRewqRFjRXxjdjMY3ogRrOZLASXqcX8M34WhUU1IJhBSCjrSbbaXFU0jEhJrnhP4pHBo5HB0IS7IvkYoTj4hoHr6HBAwRjn//FT+VcqeC64KkScyenxxjWl2zrdzOMwBVXEwCMxJS6JN1ySvuUkaEYFHgLCUG0R1oRksRz1inPzRo1xfYHxmZDlsNqO702pCwCMs3y+krUznaHSfkZM8XMvhB7cL7kdsOYaCDr0RrfFZn80CQT0+cVRgyhH2VMH8kpN1z9mzrfJiGM5cpfE+JWUWOcmhUM8jk08PyVBDdqz/oqa2+N2aEgc82G/IWW56AiMncwm6Sp7Xyx5XaqmMAhhte2w/syOEAP0SWELeLSbzQZj1qmZFBIucsHK30A64jScWTrqMyl82xt8V0VWrNYAzuLhU4KnZ49xBMhFyy3GafI0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(346002)(376002)(366004)(396003)(39850400004)(2616005)(26005)(16526019)(316002)(956004)(36756003)(8936002)(7696005)(86362001)(6666004)(186003)(107886003)(4744005)(103116003)(508600001)(8676002)(1076003)(2906002)(4326008)(5660300002)(66476007)(66556008)(55016002)(52116002)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: zPGbM940pGcoKVyAXZkHqS20olA9AhEyBOCx2R0N3P3PBNlav0N5NxQ/8dJT8EMhfX0sG+szY9GVE0yC6mve4X2ZzmqIjVzPjTX5/Y299t1bGvntQfWPjn+azVez8CCxahwoRdK8ddE5B5Pu//tfua32RdJyEXpIf9dYpoXzhFfFh4y1+2wsGNNTWQnKRnpgcB1B2cdHOPKjjPBYQ+l4vtNgWoqVLiadSg+c715Xepp1xR0u/J5x+Jc2kK8JdjCrFPDxWoas5v4sgsqIHdVGtB0D1NKRj8dwQNbLCLO4pNAa4knZQ9vhRU1cdKYd0J2p9NO7QMvHVR53BVaYhXxC7Ft5sxE7iaglVOT/9jmxA3+etHdROqU5m/CBFnVgDBW96LUXV4TZ8E6Y6n7QVXmnO9WQ8qcGoOiHTssh76Rcnp92wZofC+IhXTO42eVXJudEROOmc2/BhDRWDXMJESORCViYvNP0tImM0mbj66vj3mBkjxoJlFUdLvIydidkzgnaIv+6BDhrQdTz2AzaDOTD7ahJO8X6aLUJQCgbkZ00ST9RUl6fiEJNV4MFydjsF+M+CCDIbJy74k1CrSGRPwORyXsU7t6L5Fr/g3tAC4sMqb5nZ9+L1G16OU58f9ZLL8j42KfdLoFUhkVdrGkn7EsaMjxv/P0kPRc1i0x4f/McXSmh0KrDBCQlAh1wuPRUBiEeZrk3RjZ80pQxVFMtO9kqrDthWSF0Fw+oOifoYD0aBWUDPrCnXE/bIj2QLpQeOCwnltZXcSaKczKOBRkMvgnqvZGsDUlnD+e0h6n6bM2bYZQ=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 692b022f-703e-4a62-d5fd-08d7f01e47de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2020 11:28:36.0015 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BmE9Rz+VVor6FUj0uMeCqYWP9DSMnMLueOGLVNDVbDC09sceCkcAOZ0cPgiFFU4cdto0QnDsG1mrAp+CzR3mkDAnJLPEBrUm9sfLS2X/UT0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB4021
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.91 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVZVU-006gaO-O1
Subject: [tipc-discussion] [RFC PATCH 0/2] tipc: patches for Nagle algorithm
 issues
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

Hi Jon, all,

Here are the patches for the Nagle issues that I mentioned in the last
meeting, please take a look and give me feedback.

Thanks a lot!

BR/Tuong

Tuong Lien (2):
  tipc: fix large latency in smart Nagle streaming
  tipc: add test for Nagle algorithm effectiveness

 net/tipc/msg.c    |   3 --
 net/tipc/msg.h    |  14 ++++++--
 net/tipc/socket.c | 101 ++++++++++++++++++++++++++++++++++++++++++------------
 3 files changed, 91 insertions(+), 27 deletions(-)

-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
