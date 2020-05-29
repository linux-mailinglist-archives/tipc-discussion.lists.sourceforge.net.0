Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6146A1E776D
	for <lists+tipc-discussion@lfdr.de>; Fri, 29 May 2020 09:48:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jeZkx-0006Aq-29; Fri, 29 May 2020 07:48:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jeZku-0006Ab-Up
 for tipc-discussion@lists.sourceforge.net; Fri, 29 May 2020 07:48:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p8fmeiKOcxU3FvrKsWhklBxhcvCSqaUUNQifainF2pU=; b=JzMA6/8yqlJ7UxZiWoPsx5fh61
 eXNMnjhJdqbiDzwmcqJ+xAqU6jL6nmbYHqEdQTwQMLKM5k4p42KkL725Z577wko7X+sJb40eB7afH
 A2XutotsjGKuVFwbnR2PbtNT4MXnf1m5ysql0WodFZxbOCgznRTXNk+q5DZjRMZZDPgk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-Id:Date:Subject:Cc:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=p8fmeiKOcxU3FvrKsWhklBxhcvCSqaUUNQifainF2pU=; b=Y
 VUpt9WQHnljuIXsxvZNJRekEDssFjO6nJ1A97p3XurXUcj4CN0ClvVv4XJ1BADzYbtr+QDvHbM0zw
 g3zHCrodTeKf9RI7LW94ilMz/5wIr9HTRkDUcCKn7+b8AqlDJka6/YIbueoKtVpmFDCH6nmf2BYYp
 aOYYlH3W43HPz+4c=;
Received: from mail-eopbgr130097.outbound.protection.outlook.com
 ([40.107.13.97] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jeZkp-002RCO-Vn
 for tipc-discussion@lists.sourceforge.net; Fri, 29 May 2020 07:48:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V1P7BjgAowV3D2cMnSDJ5Sv+YkRpU4DO1V/3UR7W+6Y/wGnXePLJx9WvbCyM7C87DHUG0wU4D5svILhpbjZ3Utwqr3eE38zxiMEihfVJnPds+YMs9upWyEpiMPjP20D+oQsIY74FbGrsEwHVMOkAW2JfqBAK6oOsOf565+C6O8RcOjkRIxgmcKn1J/olsSMWGefW9qkT0fXrnb+lZBjRKzVeZxdYECtQW6RAvjMiCaBhLhncB2Uwk6oM4OOgEB9KvgNEWWzQr7BIe/21eQU4UA9bzfbrgEcQ7vrkhncaSuYNvLN3UHS11DNVpOCo+AUT3ZnBEfUoXBfUCTlRA7hsmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p8fmeiKOcxU3FvrKsWhklBxhcvCSqaUUNQifainF2pU=;
 b=Z1N6OdKqsAYJiqPlx1lY7FGTfNUn7K4N14HSGIg+hf+wZdAAsEcWfH+bPpW85UBJDYExh6WCXWYzK9Vtgn8h3AYTt1hN5wJGuf6XTw8b1NK/RbXBz7BCCEVGHGP5swUPRtAfWf9MuEK+1jXVealbOjuroPxpOU5B3VlejergR/9u5EgniTYvrNU2u6owubMPXE5azRuV21Yv080VSpKpeWwvatutS7tKfNm3+oYLa3+96quoXvIQQMWqIdaAqOguADKQzTHO8PsB64Q9KDdyrhGa2Q9N+bRI5SpXRCxZnj9fgNhAAy8oIyS3i3V+SL7WN9ArkjUDrFIvZgKIYsbvEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p8fmeiKOcxU3FvrKsWhklBxhcvCSqaUUNQifainF2pU=;
 b=Btvu8cfyKKD3M5075dy7SVeRiFm7qIPpqgCVqotTvL2tHVIOk1by2C1YvjiLMblUMDQuLgxCspnh5EnoR+Jr21J/cMYC0bYANwYN5DzdCWp8ocjURlhcdEHhz9iRfpzycQoTrMNqLcgCuf7ohOIRcKpfsW2fqnRIbL5NmN7RgoU=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB3926.eurprd05.prod.outlook.com (2603:10a6:209:c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.21; Fri, 29 May
 2020 07:48:28 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf%7]) with mapi id 15.20.3045.018; Fri, 29 May 2020
 07:48:28 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Fri, 29 May 2020 14:48:14 +0700
Message-Id: <20200529074816.4585-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-ClientProxiedBy: TYCPR01CA0009.jpnprd01.prod.outlook.com (2603:1096:405::21)
 To AM6PR0502MB3925.eurprd05.prod.outlook.com
 (2603:10a6:209:5::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 TYCPR01CA0009.jpnprd01.prod.outlook.com (2603:1096:405::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3045.17 via Frontend Transport; Fri, 29 May 2020 07:48:25 +0000
X-Mailer: git-send-email 2.13.7
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 88b25940-5d80-414d-54ae-08d803a4acae
X-MS-TrafficTypeDiagnostic: AM6PR0502MB3926:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0502MB392656C2D7A34B45BAD42849E28F0@AM6PR0502MB3926.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 04180B6720
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: swVoC4IHAfzSCQ2dlHZncryrAA9+efa2eTyge8XQa8/Ll99+Z8kAbsuv3Ht77zvNkLgiqFtwSvvLU9Ccwk1w3W48Vo6cx1BVMGMy1oVFMjmg+1Ofv9n0qglX4qr7swcETLm4hf1hj4WgguwUQtWmQMvbnUakWqBf4URVcOE/5BDPQX2NCJo4zeXPVlbCmkgInmfgfaMWzCOE8CbfysaBtpOJEFUHQ+IRCQbxQHQHTPH7HOLoFCRXOw2/KM4vWYYiobD4a6lDEtLKU9MtsH8rv2Udv+4HaOOAR48Dbly6ZdE/oLsyYa5IFrT0AXFpcx6Uq+xVNjW7dwDbJMqVA0DwAA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39850400004)(136003)(366004)(346002)(376002)(396003)(86362001)(2906002)(2616005)(956004)(478600001)(186003)(16526019)(26005)(83380400001)(316002)(36756003)(4744005)(8936002)(1076003)(7696005)(66946007)(66476007)(5660300002)(52116002)(66556008)(107886003)(4326008)(55016002)(103116003)(6666004)(8676002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: MHUleCXVMFnP+PjSxVCdtIWd7WTyS+tJJh8JTtq1NSQvdQCjPwcpcN6utBF9L8PnBp3sHYlb5nZirj9GocSjEuNFCZyAosJLW76+Mpesz2iSVTjOG8MNEHl+sQJZOoOEPCCbbFjlGBZruAjrrvTHPtB/TzMzhPFRxgDuOPqiGedxov9kMIfnADBA7w18EU9ND20Lxpr9pxv8nycQNfp9HHmVvnQOlXksDJTbsM5sTNqeFJNelfzb6G0hg0zdYZX7p73v1qUc2Oo0lX/c2wtX9Gwv8iMNGK+wYgzx6vxuiXI3WXGP0M6fHWCcOs+nee72vgz41BRKDXWBpSxtgZuCN2tPT1ccrQ2CqAAdrFe5IuXMiwOdibf8dQm5NC+AOQ33NWLFf3jWbLmbaqL7mYwDY/PUNEhyYi1CJLVElt14DEbBaBulatSaCwbBkFcvZ0Hmgg7Ywy1SreFLgsc4jvCItUBNnVVfpTrkbpfBADyCo4Q=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 88b25940-5d80-414d-54ae-08d803a4acae
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2020 07:48:28.3678 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5jSXJLZWAmslFtoOxEjkHYgRrWQ17apAAL/rlverxwORY+Lc4IK/MEAp368cHkBauXuyOnelkL2tEf0DKmPCDwP8ccQ7p1PIO6d8hw4U098=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB3926
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: fudan.edu.cn]
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
X-Headers-End: 1jeZkp-002RCO-Vn
Subject: [tipc-discussion] [net 0/2] tipc: revert two commits
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

I can see we had two commits from 'Xiyu Yang <xiyuyang19@fudan.edu.cn>'
without your 'Acked-by', not sure why... They have caused kernel panics
and the TIPC encryption cannot work correctly. Therefore, so I'd revert
them.

Please help check. Thanks a lot!

BR/Tuong

Tuong Lien (2):
  Revert "tipc: Fix potential tipc_node refcnt leak in tipc_rcv"
  Revert "tipc: Fix potential tipc_aead refcnt leak in tipc_crypto_rcv"

 net/tipc/crypto.c | 1 -
 net/tipc/node.c   | 1 -
 2 files changed, 2 deletions(-)

-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
