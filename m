Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6F928A691
	for <lists+tipc-discussion@lfdr.de>; Sun, 11 Oct 2020 11:15:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kRXRD-0005I2-Ri; Sun, 11 Oct 2020 09:14:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1kRXRA-0005Hp-PF
 for tipc-discussion@lists.sourceforge.net; Sun, 11 Oct 2020 09:14:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5gNeWsJFqE8GJJcyrkRB4g0irHbOjJjxqeSO99qphLw=; b=A6C/0rvQpHncuNwUzmyZ+4PuRS
 /9wc4lNN3QiytvaoxcZXlrcJ6wErm5+6BqC6SunyUcs7Gh6XVWVGIdqH5oyCb6Z4S/YDiPNABHQ/K
 SE8rx5BsZYVMXOOj6/PCrkLdJYQkK92UiOrmGRAS9zRB9VeJo6ygkzq2ouBPMQgOyWEk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5gNeWsJFqE8GJJcyrkRB4g0irHbOjJjxqeSO99qphLw=; b=U
 ar2Co9O7PCNa79FP24FTx3mzRENDLzhCOdKEcM+pJpiWKZOOCxNkWu19cf2vj7Zk/vDv98iTnHmAy
 9XKKX3ywmk4QhYalI+/UTB2Dj0x4u2Bt9EUq8nWhLv5BqIu+EMu01gEXgBYg5YY/bGOWAe31z8jW1
 Lr50+kuspLwGy1n8=;
Received: from mail-eopbgr80118.outbound.protection.outlook.com
 ([40.107.8.118] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kRXQw-0066xk-5W
 for tipc-discussion@lists.sourceforge.net; Sun, 11 Oct 2020 09:14:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TXeGdydHZptWm8CpF1rWrod6JM8t9eKi4tbxPKHCyRw27hRbYhO+CtWd8oLK1vZUQf0a/l0eKemdHhUOrt4hr+QCElhzH7keL20L3E2w+z6Upyi/tVbKqUGU5QjGY9/O7eHE8yOJ6ZdXGLUx8dK8v5+ucVmq96ZcmP3N3U8IpYbOHFFS8+ai6AuvO+89sBa7XOB3JXxU8J1T1nZrbsM/k5gqDt/lhPhgAl7mxEkAw2aeSUijs7ZZLm3tyWl/DUL26OIhfvcHC4lRY9PCGh5/AJwv5DMwAHecAcP1EM1e09a1B4d3Mf25HqjOsETTLxqnIT6t1qVGdkpl0umF+9Gfmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5gNeWsJFqE8GJJcyrkRB4g0irHbOjJjxqeSO99qphLw=;
 b=TSWOOl6YCb+O9i/w+4boIbsL/2Q0rmNBaW/IV7cgiDgOdtlZnclP+WLXBdzBm9GAgcWh48qLNo9jpo1Mob+cV5vY9zhyrGMF6fPtYyWreU7lWcNkc9uLAvDDylqCTMgMk5PKbJkUXxwb4o0z+nLOQ3k+Hpn7NSyxYeYyWyRwkv8vgMVjDvcQ3F7gItUjE2hQp/FA4KRIB+MzvypNeE1ha7UB/oqUcKIxumZGJ84nEwzGMguF8ZjvCm5aQS71VN8Netwjok9THDtfbD9tGz7VJQieqY9dVlYhnQtlBv19qFInQXWR1T96ZzhXkf3ruczsGWpx8Aa8vzKddmF40pLODQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5gNeWsJFqE8GJJcyrkRB4g0irHbOjJjxqeSO99qphLw=;
 b=kerrNxHch71WGyZYA1ekgJdDfjQ2Q+OjqBC4CWmtyCIOZ4oa9BcRrO5QlHZcLzeoJtXTTO6lPM2jY1NwMy1JYsDkDQT6ciL/UiE/alUn35YG0LECbp6mleMPm8XU1KW6A4ZCMtPbdMJ5GehsXUTig/GC9JqepFY1mmn1lMRvfQk=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from AM8PR05MB7332.eurprd05.prod.outlook.com (2603:10a6:20b:1db::9)
 by AM0PR05MB5987.eurprd05.prod.outlook.com (2603:10a6:208:130::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.23; Sun, 11 Oct
 2020 09:14:18 +0000
Received: from AM8PR05MB7332.eurprd05.prod.outlook.com
 ([fe80::64de:d33d:e82:b902]) by AM8PR05MB7332.eurprd05.prod.outlook.com
 ([fe80::64de:d33d:e82:b902%7]) with mapi id 15.20.3455.028; Sun, 11 Oct 2020
 09:14:18 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Sun, 11 Oct 2020 16:13:59 +0700
Message-Id: <20201011091401.10418-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [113.20.114.51]
X-ClientProxiedBy: SG2PR02CA0073.apcprd02.prod.outlook.com
 (2603:1096:4:90::13) To AM8PR05MB7332.eurprd05.prod.outlook.com
 (2603:10a6:20b:1db::9)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (113.20.114.51) by
 SG2PR02CA0073.apcprd02.prod.outlook.com (2603:1096:4:90::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.21 via Frontend Transport; Sun, 11 Oct 2020 09:14:14 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dd0cbd43-d0fa-4474-2bbd-08d86dc60823
X-MS-TrafficTypeDiagnostic: AM0PR05MB5987:
X-Microsoft-Antispam-PRVS: <AM0PR05MB59870C33484BDF35B63F13D0E2060@AM0PR05MB5987.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Tk0yZ+M/2ZfX5VQaTdNIBkZtIhD/cStsUHNVUqz7Ilm/29p44qCfrz1aES3nS1J/iOp7yX0VLpZikJ/2zMdrEGxfhiqjW7sn3sOq+X7A7ocwe8R8ErXONKp2+oBVP+cptNEUnoPKARBxTnHNSOd6EdPVLIIcCPQNUuMj7WW4rgPgjkUR+LFDC8lQRliWGf0w/dBwx39mAS6DMYUVslZmsm82ExtspX7nFujO3jOvn9WIw1zlFPrWvABZbSVtB47jGbUiT/n/iD6nr7W2w+grBNP3XvePAfm+oDt959p/ZwbDioAqwTA/Gbvrq5jVruybwFybBYJteF59RZFjtbiVHg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR05MB7332.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(366004)(376002)(136003)(103116003)(66946007)(186003)(66476007)(6666004)(8936002)(55016002)(7696005)(66556008)(2616005)(2906002)(16526019)(52116002)(1076003)(956004)(5660300002)(8676002)(26005)(36756003)(83380400001)(508600001)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: XyBDgJu0VXjxkQX58xY7itEyvIEjouy+86q2KNtdY0b3TFt+8haKUSNwlLW0G2HBg+xXIHBiaaCDM14YUUz8FxrCczg5YYBIPm48Hcp2xFmTc5JplugASGiyRQ5HkJnzOej3qMmySaHmU/AjJsgcn/sVakl8Pph2m/bbatm3opXISrDpHbnkasgPHTijrU8Yg9yWsBRhJO5VK9zrYIMKwBgEm7yHFjmaHIJB9zKUKOgtSIWsDie8YuyYQfn+zrVQBYwTrJSSh6UZqCmkc5s6jhPVfxwZmEAZlglu/WDKfWv5VRDsbos/0MlubjngWLzVuE0eAhaNtUw1DGnfxj5E9ReBNLxrhRfpyZnA0Zvsm7yFFL+jFo/coyX24VnAovVYOfGIKwstPLJkT9vnCHmzFgaRh7m6Bmi5bPaN4qB2hLGBZn1OubU903aLT4pERAWygixtd2nrFKdp9H3u1lkJ3EocG3Wstimd9nuLHcMBs3dx4GbqQ8rhlEAKFxGcaUSYUliWxfCseBBFqJtM6y6VYWkBD5b2RDfuhjrjLQyEmP62qi5B9wZmM2+1DhiDxaI2Bj7njoVQFc3grYTL9Nw0hUJVzZbT6gu/p8Mcdo9/57B2BI9ZcimFvrnBGEIMig/oyz//XYTa977Dv28ixT2JXQ==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: dd0cbd43-d0fa-4474-2bbd-08d86dc60823
X-MS-Exchange-CrossTenant-AuthSource: AM8PR05MB7332.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2020 09:14:18.3526 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ia8UeeD5iXAsdXHijoJIhET00VXizRukiXuOgRVLoODb1uDwQaQh0NPDd2bqKtCJfKuXl6LPMAYc+yC9BB1PZmOxmEazUzfszur5OwNzAYU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB5987
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.8.118 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.118 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kRXQw-0066xk-5W
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
