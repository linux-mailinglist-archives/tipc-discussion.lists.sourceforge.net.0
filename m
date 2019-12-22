Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FDF128C6A
	for <lists+tipc-discussion@lfdr.de>; Sun, 22 Dec 2019 04:00:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=br7+vcGHM2LZhhKlSMWDVpakYH5wLd4LwsoGwCQVInU=; b=gx9KQbMkqc28qJ5yzLe6lkx4rT
	a/93BoK8zVLGfTVCtqniLU0JoP9HxFsUWD8XjyLpHVvEf0+8jjpufMRPamWlZi5qN0BhNcidEu1WE
	+EZHVmi0dc/B6DkHARzAN4ht5Rd0NlpjUGhpRzYZgMQn1W+NXpH65I2LXSIPnq/JN1Kw=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iirTW-0005V3-44; Sun, 22 Dec 2019 03:00:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iirTU-0005Uw-MN
 for tipc-discussion@lists.sourceforge.net; Sun, 22 Dec 2019 03:00:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LkChWiceKO5vRy8mI/edcbT/SJWhqW1QlpdGpzaLRtc=; b=Z+ciHYxnf7+8JdNJj3+jI6mUpg
 6ymabdqR47P9SKpGBY7lOHWTGK17XfSOE38BMaeK4KOA9IAkstsKY86sZ6Plqt1FNW0Mqb7T2eMBr
 4VTli9a957tpo9K38uetuOLwU424mkDOnrCzLRKYpJ+LK4IyIVL9kQOjSizExk6yDCp0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=LkChWiceKO5vRy8mI/edcbT/SJWhqW1QlpdGpzaLRtc=; b=O
 l5dhyhwHgARjsTlSkNPuWhWz+HqaNjOPpFmuoGlX7CKp3R+1KPsaeQwEja0lVLrmeKdj4fmZo9b8+
 sEgbt3Et5IT1LZLnDydg+Cn7PNEChzSzdBOR9jblylKiVcSYd0ECQndFyvnNyhpWHKlQiyThmyImG
 qG//h6hCf+X8O7m8=;
Received: from mail-eopbgr70047.outbound.protection.outlook.com ([40.107.7.47]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iirTO-00C703-4Z
 for tipc-discussion@lists.sourceforge.net; Sun, 22 Dec 2019 03:00:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SQnnL5awXO/E/ZGIajMDP9tH/w5RyBkDsdkHhRMQ8M6+QEy9itfE6os0CkWhmBS0khE+Y24pLUYf1cD4FhZp9PR4g6otRo0Uf5WfMLtuy9JOJKlt+Bedm/qZx6MGeD4TTetpLPTLtXCvOvRrSKUYgn4ptINt5lEsozfNaSWOQ0Plo4fNBJwmyTGAjvO+0cYxEPQZAqDL6d8kPBEs/t7zlaDcUVMmJ/+qH82Sx+byOs4MWZcaDbl7o0C8CQEWC594g3CiutZgLLTmAc9AQQUMQVDn4fTWRggAH/e+l/RiEihvkt9sRyuONEDIGXMZf3FeWSYDMNYue2vilgHjJucLTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LkChWiceKO5vRy8mI/edcbT/SJWhqW1QlpdGpzaLRtc=;
 b=ksheb/8y+2AlEF3lEhfBDlZWfQvqp0PBD45dY73HQRAalGNTbn7x52Nh9hHtVnuEuMjrqA/ImeCHS1ZzAAriAjs3ydNfUpl60HSAyPyvKgIEXVTrph9bPAM0GzbzNiiSxpLBRVDxcbiZY6dhrjVynbV+v0UObrcS0HXALShHf+tHiUJfxbBVmcQBZMP89nIhyPsCWGex6V57zxlUwimwMvssuA4f73VFWg2g5BTNeUB8xFgrobqJI+YVRVVGaYAF2DGMDMuMWZhhX5HBAq2EhcZFnpzVVkY3NZt1izXcy3MX0D2ubUW4gwb3xhYrogefHdtJAEMIAfTyqnVhdLW+Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 192.176.1.74) smtp.rcpttodomain=lists.sourceforge.net
 smtp.mailfrom=ericsson.com; dmarc=pass (p=reject sp=none pct=100) action=none
 header.from=ericsson.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LkChWiceKO5vRy8mI/edcbT/SJWhqW1QlpdGpzaLRtc=;
 b=g7CAmT3ianWwIMQyEmo8xMN3KkPPQjvfaH6m5POijPP2FwXP8gGtWjokBzNyNaqpgREqaMrJk2yyu97i52iR73O9ZZRlCbe1ka4ZNlma3/ye4v0SSgK3QU6aCVOc1+pbeva+Uzsg6jkNAMGmplxtqq8zx2M/iwaF2tnntgDSBd8=
Received: from AM3PR07CA0064.eurprd07.prod.outlook.com (2603:10a6:207:4::22)
 by VI1PR07MB3118.eurprd07.prod.outlook.com (2603:10a6:802:20::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2581.8; Sun, 22 Dec
 2019 02:26:14 +0000
Received: from VE1EUR02FT019.eop-EUR02.prod.protection.outlook.com
 (2a01:111:f400:7e06::201) by AM3PR07CA0064.outlook.office365.com
 (2603:10a6:207:4::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2581.7 via Frontend
 Transport; Sun, 22 Dec 2019 02:26:14 +0000
Authentication-Results: spf=pass (sender IP is 192.176.1.74)
 smtp.mailfrom=ericsson.com; lists.sourceforge.net; dkim=none (message not
 signed) header.d=none;lists.sourceforge.net; dmarc=pass action=none
 header.from=ericsson.com;
Received-SPF: Pass (protection.outlook.com: domain of ericsson.com designates
 192.176.1.74 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=192.176.1.74; helo=oa.msg.ericsson.com;
Received: from oa.msg.ericsson.com (192.176.1.74) by
 VE1EUR02FT019.mail.protection.outlook.com (10.152.12.107) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2559.14 via Frontend Transport; Sun, 22 Dec 2019 02:26:13 +0000
Received: from ESESSMB503.ericsson.se (153.88.183.164) by
 ESESBMR501.ericsson.se (153.88.183.129) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1713.5; Sun, 22 Dec 2019 03:26:10 +0100
Received: from tipsy.lab.linux.ericsson.se (153.88.183.153) by
 smtp.internal.ericsson.com (153.88.183.191) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Sun, 22 Dec 2019 03:26:09 +0100
To: <tipc-discussion@lists.sourceforge.net>,
 <parthasarathy.bhuvaragan@gmail.com>, <tung.q.nguyen@dektech.com.au>,
 <hoang.h.le@dektech.com.au>, <jon.maloy@ericsson.com>,
 <tuong.t.lien@dektech.com.au>, <ying.xue@windriver.com>,
 <lucien.xin@gmail.com>, lxin.redhat
Date: Sun, 22 Dec 2019 03:26:02 +0100
Message-ID: <1576981569-27482-1-git-send-email-jon.maloy@ericsson.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:192.176.1.74; IPV:; CTRY:SE; EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(376002)(39860400002)(199004)(189003)(426003)(5660300002)(956004)(70586007)(26005)(2616005)(110136005)(316002)(70206006)(86362001)(336012)(186003)(2906002)(8936002)(8676002)(6666004)(356004)(7636002)(246002)(478600001)(36756003)(44832011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR07MB3118; H:oa.msg.ericsson.com; FPR:;
 SPF:Pass; LANG:en; PTR:office365.se.ericsson.net; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b67542d7-7843-4600-72b9-08d7868650f5
X-MS-TrafficTypeDiagnostic: VI1PR07MB3118:
X-LD-Processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
X-Microsoft-Antispam-PRVS: <VI1PR07MB3118B9C459512FE459D203BC9A2F0@VI1PR07MB3118.eurprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 02596AB7DA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1MpIEM/CpJOCRiai2Iz714EG8opR8qzcAD3235uNQ99+AMyUfYqfU5nwXUR33DEGZ6dV1T8dCZvrtC7RByn2IEpRQuCYMDhLuVCRyONrpRpNCoCjtZrQbHZg9eFQ1z+NHjup00FShA9SzYT4TURejxLL1yuh+womrdL3HquxYKQ9P87sgYGrgUY5qWvg3bkr99a6PJqQt5G9RzI1JMMxudK1SNOGImy/E6Lb+JhC473ZxNAou25L05YyzePBPIVhStS+FuVHE501PcrIWME97WmhZv7pSpdhEhhoaUOTrs8ari4vYsnui6ethNt0iIlY2WWokOeVo8rqeRKRN9+8CdeGPV3eCYZUgVxNISWV4wWbq5w5Ahbo9EhZHvWfIizqZOx4mbnG5On91uvU9jmsXjWOZwl0Lsq6U9hMQTgjQ6CMi0A8xRlbmlWBB3lMoJ3w
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2019 02:26:13.7356 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b67542d7-7843-4600-72b9-08d7868650f5
X-MS-Exchange-CrossTenant-Id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=92e84ceb-fbfd-47ab-be52-080c6b87953f; Ip=[192.176.1.74];
 Helo=[oa.msg.ericsson.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR07MB3118
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.7.47 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iirTO-00C703-4Z
Subject: [tipc-discussion] [net-next 0/6] RFC: tipc: introduce GSO in TIPC
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
From: Jon Maloy via tipc-discussion <tipc-discussion@lists.sourceforge.net>
Reply-To: Jon Maloy <jon.maloy@ericsson.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

As I won't have sufficient time for completeing the work I have been 
doing with introducing GSO during the coming months, I send out the 
patches "as is", in case anybody feels compelled to continue the work.

The code here is probably not very robust, especially regarding failover
during full traffic, but gives a neat improvement when using UDP, so we
can now enjoy good performance while avoiding the virtio ring buffer 
overflows and resets we have been observing earlier.

Unfortunately it also brings significantly lower performance across
the Ethernet bearer, something we have to resolve somehow.

Finally, if we can make this work in a satisfactory way, it opens
the path to introducing host supported GSO, so that full 16k or 
64k buffers can be transported VM-to-VM.


Jon Maloy (6):
  tipc: change size of stream message chunks
  Revert "tipc: set default MTU for UDP media"
  tipc: refactor function tipc_link_tnl_prepare()
  tipc: separate packet sequence numbering from skb numbering
  tipc: introduce GSO
  tipc: let stream chunks bypass gso over udp

 include/uapi/linux/tipc_config.h |   5 -
 net/tipc/bcast.c                 |  16 +-
 net/tipc/bearer.c                |  29 +++
 net/tipc/link.c                  | 273 ++++++++++++--------------
 net/tipc/msg.c                   | 409 +++++++++++++++++++++++++--------------
 net/tipc/msg.h                   |  58 +++++-
 net/tipc/node.c                  |   1 +
 net/tipc/node.h                  |   6 +-
 net/tipc/socket.c                |  21 +-
 net/tipc/udp_media.c             |  17 +-
 10 files changed, 510 insertions(+), 325 deletions(-)

-- 
2.1.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
