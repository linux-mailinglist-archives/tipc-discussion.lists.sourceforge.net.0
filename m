Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5FA1E1ED0
	for <lists+tipc-discussion@lfdr.de>; Tue, 26 May 2020 11:39:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jdW36-0003af-Lb; Tue, 26 May 2020 09:39:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jdW34-0003aU-RZ
 for tipc-discussion@lists.sourceforge.net; Tue, 26 May 2020 09:39:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vfqu1WqvNjVCJRN3fL3qjOFo79RZpcsgqLcZbDOLTrI=; b=dRnfh7vIiWX9+ZVxmnQ1oni/W/
 MTLcy07Y9cTVbxozSY4rzF9nOiSOHBQNJbVxiRupBfWOK1g+5bBPJ/3bsciZ4t6P7WGYOoKhq4PZO
 CbvOUJkbGQHeCxsSilDUWnmhnlVhWZPtuD7IgKEcSL+FDhO3WWIzpxjwyxycfuJaII2I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-Id:Date:Subject:Cc:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=vfqu1WqvNjVCJRN3fL3qjOFo79RZpcsgqLcZbDOLTrI=; b=P
 BZbUezEfnBtyG7XH/iqbm8LeCsb1BrWorBI9bQOjHeWmM0IExxsSOp/KJWFbvzioeaIwGN1XGkPuG
 QwJrX1Fgyo2D2ELOSNcQgxLYhWHqhouzHce4slgHTj6J9ZsWMz7M/4jJMeOT2SqkynmxdwHyV70SU
 9dFHiv8gbgwGh7js=;
Received: from mail-vi1eur05on2131.outbound.protection.outlook.com
 ([40.107.21.131] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jdW2w-007W7e-4D
 for tipc-discussion@lists.sourceforge.net; Tue, 26 May 2020 09:39:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NQjPpvhnOnWFDNvzP5zrNJPlofpdtGK60efoXM8MCcG+lbDMo+SWkI4uHnw/SmG1oHtzKQ2ra7nN+/XJeqBkJXAmKDd1YG0zBWS88wRCw1GdOgujupDb1QOaewI/ejujZpZDvxGOG5tFipkRLXv6s3f50Ci358Ny/Uo/PIZFcRsexbC36WH63hBsO9KFw2uAPcPuvZcYYyQQzEjeTlBj6DJR4RQec1OEjgZV5FgQje+aQAO1oMaE89jgluLYPHTHF7yQ5zx0/gKMiP8ez6Yvak7bX6EXuIZKxp3Ms8Edzc4Iy0Msp6fPG5C7sB5+6edaAZuJ7YCmY1QYmaVNSvha5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vfqu1WqvNjVCJRN3fL3qjOFo79RZpcsgqLcZbDOLTrI=;
 b=c1+llmC50oXR3m5ZbJoc1fbMiAjFJz4Oy3nwPEeIBvhyZ/AInBwoYkGeac7pZi8bmBmhEI45qe9hDqmyEUPKi45lC7o5fczGzD2BZPJ2bQSw44NRMHFadgOFWPBR8sO0TtESjHLGvZobtw0gbETheWhMkX0JCn5x6Qdt4WBcm41Hj6PSvVlE43AJ/PGgmNPJCCVE5SperSlBe80U3/XEtRQcOgIOuEgU0kP7ppDwxySeSZ4d2NB+7sP20QQrlEUb+zJHQCGge4OoWM/h7+LP6fpdvfkLZc6vmbj42H4PcOVFajSODHPrv62pk86yUnvprwAKiRge56jdbFSHKN4s0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vfqu1WqvNjVCJRN3fL3qjOFo79RZpcsgqLcZbDOLTrI=;
 b=hg+ZuxqyxrYpwGAHXBAbzdf2V+2f/I8NbcxvU1LTABGrsaI98mNrHRcHN7XDNBZ6hDk40GpE6ZANVqep9xyt2jwrIXYyiO9zozSEEfBOYGyX5idLrqEzOCRa8nME5jLDwa42vNrf6nYw5Oveq52DcedvSt2YtDR24lD3MRSZI1w=
Authentication-Results: davemloft.net; dkim=none (message not signed)
 header.d=none;davemloft.net; dmarc=none action=none
 header.from=dektech.com.au;
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB3718.eurprd05.prod.outlook.com (2603:10a6:209:11::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.27; Tue, 26 May
 2020 09:38:47 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf%7]) with mapi id 15.20.3021.029; Tue, 26 May 2020
 09:38:47 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: davem@davemloft.net, jmaloy@redhat.com, maloy@donjonn.com,
 ying.xue@windriver.com, netdev@vger.kernel.org
Date: Tue, 26 May 2020 16:38:33 +0700
Message-Id: <20200526093838.17421-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-ClientProxiedBy: HK2PR03CA0060.apcprd03.prod.outlook.com
 (2603:1096:202:17::30) To AM6PR0502MB3925.eurprd05.prod.outlook.com
 (2603:10a6:209:5::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 HK2PR03CA0060.apcprd03.prod.outlook.com (2603:1096:202:17::30) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3045.8 via Frontend Transport; Tue, 26 May 2020 09:38:44 +0000
X-Mailer: git-send-email 2.13.7
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 703f7624-791b-40e1-69f7-08d80158964a
X-MS-TrafficTypeDiagnostic: AM6PR0502MB3718:
X-Microsoft-Antispam-PRVS: <AM6PR0502MB371866D65A70083037D8C388E2B00@AM6PR0502MB3718.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 041517DFAB
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MLiZzkJIv4yLEGTfWTQRfDXHz5LE15ytPXRNpGFBKY7GtCaJDUg2bNzV37KMx5j4TnGy5ZKYLzYht7jnMHlu5LkiBlchKkXo/49H3Uf9nPZQ6lp9lId7JzfqIGNJUBk57Gurx6lsHO6mZB2LvvQ5fs4b7saGV9ZK4wBXbFip6N5V8vnkuezHKryyASRV485p7iqP41Mksv0iIxVKTBFlsQQeW4b1Akmh0tPWOFBowxopWIZ1P1NQ64n+5z3Ldpw44/AMMOVXN0t8auq0VtTkRAYvEktv+jjKEKJ8TH1WLeDYOguToB/VxQX0Hj6p0Sdi
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(346002)(366004)(376002)(136003)(39850400004)(8676002)(16526019)(956004)(2616005)(103116003)(55016002)(186003)(6666004)(4326008)(66476007)(66556008)(2906002)(86362001)(36756003)(316002)(5660300002)(26005)(66946007)(8936002)(52116002)(1076003)(478600001)(7696005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: eMo6moPsPHvgDdTK/ADXLd4yLEKaKrY9bjkBKLEcxysrOeyAx+iVEYyJfFgTKRsKwvlfAmE+nphc+dgi8tWslbf8hUDJOIDNuXf6nysOmSTbWkAtey6btEvX3NAveWwuzdVXKhNns6JKoEPi5ZbLNelTvAxAdD6oNiGwNengHfcHWzyOQIpXOf7Twuk8SqkOVuqgt0p673d3HjiEQ5yBWRoEwW/+ekJkLlUW2EuZiRPyn+rDOdC4RptdrrF6OWyf2fbEDgg0QPo6QVIR2qHzKgnAF3rjZa3anN09uDefnhiaCr/NiXXhILZ2c1RpcYDriWbrBu2IsYheJjSg+kaPAlRJ4uL5wd0eVWHMTuBlTgE8m1kVgttl65M0L0mJ4v0Mktbj2PaGwhBycHgZsQqk6LkkzzFmkhRFHKpCj6017QTF+eYtzZkPmjeJVVJsH7Ijpxfq69p9HVjnWIE/8wlAdwQWexprqFdO/lrmYbgo7+w=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 703f7624-791b-40e1-69f7-08d80158964a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 May 2020 09:38:46.7911 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Uj252a5Slw+Es706bJCWVS/IxUr5EFQaJUO0VgcdAtN2FgSE6OfGWpk4SWyLBHJ9CT/7WaSvO6ckDPSRFj44NS76XRv8n52wHN5BkSF1PGk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB3718
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.131 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1jdW2w-007W7e-4D
Subject: [tipc-discussion] [net-next 0/5] tipc: add some improvements
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

This series adds some improvements to TIPC.

The first patch improves the TIPC broadcast's performance with the 'Gap
ACK blocks' mechanism similar to unicast before, while the others give
support on tracing & statistics for broadcast links, and an alternative
to carry broadcast retransmissions via unicast which might be useful in
some cases.

Besides, the Nagle algorithm can now automatically 'adjust' itself
depending on the specific network condition a stream connection runs by
the last patch.

Tuong Lien (5):
  tipc: introduce Gap ACK blocks for broadcast link
  tipc: add back link trace events
  tipc: enable broadcast retrans via unicast
  tipc: add support for broadcast rcv stats dumping
  tipc: add test for Nagle algorithm effectiveness

 net/tipc/bcast.c   |  22 ++-
 net/tipc/bcast.h   |   9 +-
 net/tipc/link.c    | 487 +++++++++++++++++++++++++++++++----------------------
 net/tipc/link.h    |  11 +-
 net/tipc/msg.c     |  12 +-
 net/tipc/msg.h     |  43 ++++-
 net/tipc/netlink.c |   2 +-
 net/tipc/node.c    |  73 ++++++--
 net/tipc/socket.c  |  64 +++++--
 net/tipc/sysctl.c  |   9 +-
 net/tipc/trace.h   |  17 +-
 11 files changed, 486 insertions(+), 263 deletions(-)

-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
