Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2F2258E05
	for <lists+tipc-discussion@lfdr.de>; Tue,  1 Sep 2020 14:14:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kD5B8-0005Hw-2o; Tue, 01 Sep 2020 12:14:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1kD5B5-0005Hk-R8
 for tipc-discussion@lists.sourceforge.net; Tue, 01 Sep 2020 12:14:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YHcgBNRNeynxlvgHTlEHzjQZxwxkxEDtZ8XmtiNWnX4=; b=a1h2Hr5dlYWM33Oi32y/l62eZh
 1sjTYPam9X0y69jWwZcc2cWbWfuEBQjtc+9acVqqLQiTUGd7rgDxEFMhIgGS5dfsDotv8VQYHwPH0
 UGA8o6RQzucXmjxPzkixdstOl4tHMfZck0/w+ZfQQRVb0vLiPw1TBBe+90lYrDei8A/I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=YHcgBNRNeynxlvgHTlEHzjQZxwxkxEDtZ8XmtiNWnX4=; b=U
 9YzIJhrB476LVFLJtHTfr7FBfDmcrxghIrhobeJ1w60NBUYPsYV7gKeY0P4TEKvqcn5SS/qIrgZVx
 cPuDku3bEn8epKPpTxmSJ2snAb61uOO4BmbcthkWljLm/wsFlxqDbuHuM0R2Z10AGnoizlYv9/Wzn
 0ytXkad2jD1Yuokw=;
Received: from mail-eopbgr80132.outbound.protection.outlook.com
 ([40.107.8.132] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kD5Ay-007kX6-HL
 for tipc-discussion@lists.sourceforge.net; Tue, 01 Sep 2020 12:14:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lgh9RKkupP3288x7V9b3yheZI1TMCuRHWjSKnmrbOuI5RqrEfS3JH34xLDonmYBFwosGbv49iMJF/0969fKoDLQbw0OIcW/yeF/oHBxI8jAHuvrtHPn/xggp0um9X4MGDOksFHJOywHC9RMun6h7h2OlsgR6g/D89TzgdyjdWetZPAUn5yXJJLWh86UsiwbaSekSs/2H4xthKKlwS2IuWxzhsvRmBO9iLEesDI1iQFIiUaADSw0Xp/NdqmMvPGIpvzfvSGvzPANETJs1JrFtU1zoJ2kZY95fpACrTb+pIoedWui9hENUToWoVAGYryF5WoLJBe2izgxxtyl0gT4wmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YHcgBNRNeynxlvgHTlEHzjQZxwxkxEDtZ8XmtiNWnX4=;
 b=hFjLJUdtA4Snwn/rgjnTxbc+a0/gDpiuWdqtu2bSOgjnBu9PSJa9oWPd8iTo87fT+4ZwmtILXm6HnDV1DOq9rXu++vEDuHjLT4qFBLugBYpVR8jo2Ru+Ns+UKbcGmZmJgOteHaYO+3q52TE7qWfc0Buo4qaDNVGELsknKOKOZnAEYe+8mCLrvOf432eyYoaDUetLeKW+hk08LHVCY4kmI0qRSHTubaB4+neaQiwH1M3T5C7Kesw7rqX1irYoLfhRLxX18lkCCnPjFrTxjznwUNVRGM0VzQVlHGk0FkA8NWGmYMJISINrVanKAKullxS6RsGXXey8tTRW5rxmub2KJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YHcgBNRNeynxlvgHTlEHzjQZxwxkxEDtZ8XmtiNWnX4=;
 b=hzhgTexfMMOIBkU7C3XMFub2LlA2a3xWdWblUXQu1mqDdY+4lsbaTHzR+kxEzItlhFW7bO3pOH2YN3fCUVjZ7B75PPRNbSotqq+B9fD+d5xNEaTo9hqwCyeLKg/7dzfotOt5c/yduS98c8waeY4pFZo2cmypVtLtcyO9YDZiVL8=
Authentication-Results: davemloft.net; dkim=none (message not signed)
 header.d=none;davemloft.net; dmarc=none action=none
 header.from=dektech.com.au;
Received: from AM8PR05MB7332.eurprd05.prod.outlook.com (2603:10a6:20b:1db::9)
 by AM4PR05MB3314.eurprd05.prod.outlook.com (2603:10a6:205:d::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3326.22; Tue, 1 Sep
 2020 12:14:04 +0000
Received: from AM8PR05MB7332.eurprd05.prod.outlook.com
 ([fe80::64de:d33d:e82:b902]) by AM8PR05MB7332.eurprd05.prod.outlook.com
 ([fe80::64de:d33d:e82:b902%7]) with mapi id 15.20.3326.025; Tue, 1 Sep 2020
 12:14:03 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: davem@davemloft.net, jmaloy@redhat.com, maloy@donjonn.com,
 ying.xue@windriver.com, netdev@vger.kernel.org
Date: Mon, 31 Aug 2020 15:38:13 +0700
Message-Id: <20200831083817.3611-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.26.2
X-ClientProxiedBy: SG2PR06CA0247.apcprd06.prod.outlook.com
 (2603:1096:4:ac::31) To AM8PR05MB7332.eurprd05.prod.outlook.com
 (2603:10a6:20b:1db::9)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (123.20.195.8) by
 SG2PR06CA0247.apcprd06.prod.outlook.com (2603:1096:4:ac::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3326.19 via Frontend Transport; Tue, 1 Sep 2020 12:14:01 +0000
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [123.20.195.8]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a5c003a7-bbde-43b0-a06c-08d84e70841b
X-MS-TrafficTypeDiagnostic: AM4PR05MB3314:
X-Microsoft-Antispam-PRVS: <AM4PR05MB331436D0BF94F0B84E89E0BDE22E0@AM4PR05MB3314.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cAKTUtCUvr50c4DQPjdND+yPNJLgwgVGbvdtlm2yAFjuoBxAWqRJOmgV5c5YyN/OtOSI3F8903zGyuxB0A9Hf4qzCoVie+4bYjI4C1O7BpG0rYaTyk59ydwK5guvqs9yeaNA2EG2eCnEGSmhvShtfZm/y3gOKO7y1QZF2DLn7W6VkI4yULD2XEXbRboWBR+wNVgFsVF2PPvJLjqj0h93RAEi+2+pC0cmeMGROEG0uc7kTOr82Ad1kWuzE/FfJ69DE2KwRdHld/IeHFZmEudyql28EsFj82VNKpMHZ/fu+VI9q8BHQPqGR3skW7END1le
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR05MB7332.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(39850400004)(366004)(346002)(136003)(396003)(16526019)(86362001)(478600001)(55016002)(2616005)(316002)(956004)(36756003)(6666004)(1076003)(83380400001)(4326008)(66946007)(8676002)(26005)(103116003)(186003)(5660300002)(55236004)(52116002)(8936002)(2906002)(66476007)(66556008)(7696005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: WXvzb63mUDu8Bkw1gBq3ZSgJwihaZLIn/Berwk3gj/Em4H1s1sYyp1FyctA+vam4M3bxCzikCllWeK4qga9LgG6juFYhzka6d9+tY1L6LQIVMg78NRmJjbJmwTq36iJP+bm73IGS0xyJihEPPVq7y0oOO5Zd1rsjwAldIiMINu3f5fnA/b+VazpRC0E8c2UGI1yCZwFt7U0tpdRVgzjPlK9IcMskzIEGJV0V6Gu0DzjMYApnsoJE3Rok9P84QOJXXsPC+YB6SDG9tXmLRg16pr8PoYr7EIFx+8+dgLjmOGUCXO+KSt9IruFOHZfDHXPwfXnVB6HufgsyaqcTiWHBZweB3bZMPbpGPeOZRNfPPjYTqRJC14BKslAJQcEfzTfXcnbZJNNycfEKXsBCSysqWTMzDgq/QIHq5x5LCiTT++KXiq8iORDWzKjeBoeG/sZMrJUBXu9chY6wIpsrm46ADaV6BDQNFOkN7hD3E0+KVV6+K2xAwNaZlV06m3dgi0C8nQBFCgzWZFIklsepWGU+cWGwC5sVDoBkIjepR4/IpDEvx8rPbS1wFh49nQZTvyZK6rBH4OdAzOqFX6oQCYfxzZtbFk6nrcYuxQvTslMA27UHqh1JILHRWXtI457/CFcSXZlBU6tHPDmHIVEHcy9MxQ==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: a5c003a7-bbde-43b0-a06c-08d84e70841b
X-MS-Exchange-CrossTenant-AuthSource: AM8PR05MB7332.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Sep 2020 12:14:03.6634 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ngNnloTnAE9x94Toyupko7/qSSNwpTnt+2q4saw0U85TocvnrKR7qjs6mEgl+g2EnNJkRsEJ562gPhYgTxZP/ZBuQql2ZdeHpj4TvzScmFA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR05MB3314
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.132 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.5 DATE_IN_PAST_24_48     Date: is 24 to 48 hours before Received: date
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kD5Ay-007kX6-HL
Subject: [tipc-discussion] [net-next v2 0/4] tipc: add more features to TIPC
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
 net/tipc/node.c                   |  91 ++-
 net/tipc/node.h                   |   2 +
 net/tipc/sysctl.c                 |   9 +
 10 files changed, 853 insertions(+), 283 deletions(-)

-- 
2.26.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
