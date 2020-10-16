Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F7E291632
	for <lists+tipc-discussion@lfdr.de>; Sun, 18 Oct 2020 07:54:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kU1e6-0005cJ-V7; Sun, 18 Oct 2020 05:54:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1kU1e3-0005c8-Vl
 for tipc-discussion@lists.sourceforge.net; Sun, 18 Oct 2020 05:54:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5gNeWsJFqE8GJJcyrkRB4g0irHbOjJjxqeSO99qphLw=; b=jURAcCz5nKKP4iWs/t8t7P8eA0
 /fauk2AayrAlr3Rq6Il20pz9LSFqh61dlpc+pge69VJuhAawVW7tGefLMJLoZhL/Ie3pfkyOVS8Ny
 4e5kWreLDPzAK2LDRnIYasuc6+nlrQfl3uqrILDJFpKa26ss6ReI8cWfnd5tmXYlkfEw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5gNeWsJFqE8GJJcyrkRB4g0irHbOjJjxqeSO99qphLw=; b=Q
 Fta5+Kc/Ce3SuBJij3N3Tygw7P3hlVTbWR3PcCXAO2yS4/3wHnMB1JFE+cS4yXVqf+Jzkf99H19Qw
 bPDa8A2uX4PhzoqSXeiM0xmoVZ6lGLjLS+dKOLzLECITsJvZHbKvEAI5p0CJbt4ovGIexZuq7jM+l
 h5+Ot4EjGyeuCZfY=;
Received: from mail-db8eur05on2114.outbound.protection.outlook.com
 ([40.107.20.114] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kU1dr-0029dU-N9
 for tipc-discussion@lists.sourceforge.net; Sun, 18 Oct 2020 05:54:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Afz5+eC29T8p90G9ihciIdqpQUMnp4YDAlSGWrWCg3hDwL+A7n5tbGCTKEz0vJGAijRATpwWEH4yo27OL3DoYOOyH4rxMkuUlLPx37be76j3k6XG35ucrOlXpFncpB7KXQGPzKDbvc8nxqInWWcMaZFfz3S58a7jU1Yx94MN254Wuk5MvBBg2ed49rffxsMU8iGroIq9tcshWZg+4QcSXOxvgxBB9G8nX4aoyvd9GTj8bdsh71xOd+6ny2Nz7Kz3h63TP6cu1nhUIzl+/xrEEsQS+/QyvnC94L27Bl1Bp6xSd2dc/YLb4mAsv7jqkZ4/s2yWHeOjl4/pmB3/jAyKMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5gNeWsJFqE8GJJcyrkRB4g0irHbOjJjxqeSO99qphLw=;
 b=cei07zdWU+jEq3GWmfFv+C0veifjYCqGCxrY9iTm6h9xduZMnVurveuaOw+ZEeYAE5Mnmjr4wlJVB/RCIccSsSF1rO25SZG231zn9vaSrWiQwF8yhHneTNOErO1brji86bH4u1nEBnAPnz8F/Gzk4dfL7iVVB2cKBEdJcL9WmQqbRvTcWwn84mdtXlXNbCClkW4j3m8U1Hr04GJW9aJhHElKvN78vTq23+m+WnQf1k3zKhIY00J7gPXEHZMPn27bSYifoDAuPpKUY3Ltsep1BU82E/X9cb0MTNaxXFKvBbUyMrjH6jh9tK2tX2tMBrKEL4AzYifEDPIejZpMuQe8ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5gNeWsJFqE8GJJcyrkRB4g0irHbOjJjxqeSO99qphLw=;
 b=a/d1eowC4g7JyS5NTzOpyCFoxWq8ehHCsSB/VbmD4NDb/slNEbMHO6WF8WjBarCYlxgO+7UjL1QVmwHVZ29BpnqUQvAjGJ6eg5ZJRi9Jf4Symb92hMcZbunXF1vvca8DDgRJLrt2iXmlAZO088B/JmPqKreHF831myPgL+SxzYY=
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=dektech.com.au;
Received: from AM8PR05MB7332.eurprd05.prod.outlook.com (2603:10a6:20b:1db::9)
 by AM0PR05MB4131.eurprd05.prod.outlook.com (2603:10a6:208:5c::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.22; Sun, 18 Oct
 2020 05:21:13 +0000
Received: from AM8PR05MB7332.eurprd05.prod.outlook.com
 ([fe80::e846:1ad7:c6f1:ab9f]) by AM8PR05MB7332.eurprd05.prod.outlook.com
 ([fe80::e846:1ad7:c6f1:ab9f%3]) with mapi id 15.20.3477.027; Sun, 18 Oct 2020
 05:21:12 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: dsahern@gmail.com, jmaloy@redhat.com, maloy@donjonn.com,
 ying.xue@windriver.com, netdev@vger.kernel.org
Date: Fri, 16 Oct 2020 23:01:59 +0700
Message-Id: <20201016160201.7290-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [113.20.114.51]
X-ClientProxiedBy: AM4PR07CA0009.eurprd07.prod.outlook.com
 (2603:10a6:205:1::22) To AM8PR05MB7332.eurprd05.prod.outlook.com
 (2603:10a6:20b:1db::9)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (113.20.114.51) by
 AM4PR07CA0009.eurprd07.prod.outlook.com (2603:10a6:205:1::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3499.11 via Frontend Transport; Sun, 18 Oct 2020 05:21:11 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: eb82651f-af70-4a99-a2a4-08d87325a105
X-MS-TrafficTypeDiagnostic: AM0PR05MB4131:
X-Microsoft-Antispam-PRVS: <AM0PR05MB41316666584A6C2129FDF639E2010@AM0PR05MB4131.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: O/cArDjPYwRs1A1op8SO6F1GjTH324h8q8xeyqzf5pnemSoP3HOtCdSq+9kYiPXKlNMOBKQAhsGAGEE3iGCb3uyQ+Fi5u/5+9CgkIR4BWOpiqMVPIAY34DcTayRlcdTQEcwK/gFirmvuOG2goUgFPHeF+Qq+JTwI8rdNLeIjqTA/o9tk41WeSm5w8+dV+GBKwhjXAj/yDxiwXAJpD6Kg0S+sJgvfZeIgJRzb82xJI7Jpl3DKpmcTF0UDhB9FvAqEZf2Xfoah0GscBbrHnkenGcvjikMlRAfETfBBxxiw1JI/m7HcykC3d5kxPOWBd7o9ZnhksfZeonWXY1Ru/AuhbQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR05MB7332.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(346002)(396003)(136003)(39830400003)(376002)(26005)(5660300002)(8676002)(16526019)(8936002)(66946007)(1076003)(6666004)(52116002)(66476007)(7696005)(66556008)(83380400001)(86362001)(36756003)(478600001)(4326008)(186003)(55016002)(2616005)(2906002)(956004)(316002)(103116003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: +lbx0Fz78w5rvoXNAL3D5piRVd1JmVfYhqNyfyYC10JS1dSwSI/YwbeTXDPfP+oWUcQkHMW+kp/xNLhzMcce5hEdA8IJAsDuuMwnIa406tKTrOFSkXA4BjNCvxmL7l7tvyDq08FflmgQ2f92nx7pcCE4s/cn51sA6SULZmYQp31AByvnxycz7dga+1PogqHK/Onq2zqOLU71f4BHKr2wq124xwOlpW2f+3dFMdljKRApLO2Cm4NEDetSMjsf/70nsL3HLT4NPh1WKG/mRj2F998xtQ7T/eitcJFMKe2JdvWqMyr1b3eyHDNU+s0ieLE7OnW22GqwWru0CMzMS5BddtUpVIHITpg3untH4RkgBv7Z3FA+WlhujmbjXmx3DuGcqDd8h4dKWzuZkgN0tFwYWGblegaXRksFlytDcGhRYcmT/9MvsAiEEjdmsWHTd6L7ytqy4SCYWvl7YE+aRdb/l6hue8Txdy5EyUmzG1zysPKWa/+y3qUbshwnYVcEDRsgCJBgLFrIpWdyXtvN7xAUrKlENkRBK/0l0DzXyqjsn9lugBPN7PP38rFHRbcm5Zir27YLYlZQKw+lfPCwSS4R8pV8a4ikJU3PdAds56gfZ4M/1nHkFwLagelxlkK7IdFZrizaDgoLdy62hF9HXt6e3A==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: eb82651f-af70-4a99-a2a4-08d87325a105
X-MS-Exchange-CrossTenant-AuthSource: AM8PR05MB7332.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2020 05:21:12.8506 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: exYy3uNIqUgEDb4rTPmt+vpPAWJYO+KT8a61stGcQC/9jf4Hm/I3BT78Wu1tOOVbGu2PPzFCI+8XrVnxvcCPNMIK02GztMzS3iWHMymLBxU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB4131
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.114 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.5 DATE_IN_PAST_24_48     Date: is 24 to 48 hours before Received: date
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kU1dr-0029dU-N9
Subject: [tipc-discussion] [iproute2-next 0/2] tipc: add new options for
 TIPC encryption
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

This series adds two new options in the 'iproute2/tipc' command, enabling users
to use the new TIPC encryption features, i.e. the master key and rekeying which
have been recently merged in kernel.

The help menu of the "tipc node set key" command is also updated accordingly:

# tipc node set key --help
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
  tipc node set key this_is_a_master_key master
  tipc node set key 0x746869735F69735F615F6B657931365F73616C74
  tipc node set key this_is_a_key16_salt algname "gcm(aes)" nodeid 1001002
  tipc node set key rekeying 600

Tuong Lien (2):
  tipc: add option to set master key for encryption
  tipc: add option to set rekeying for encryption

 tipc/cmdl.c |  2 +-
 tipc/cmdl.h |  1 +
 tipc/node.c | 81 +++++++++++++++++++++++++++++++++++++++--------------
 3 files changed, 62 insertions(+), 22 deletions(-)

-- 
2.26.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
