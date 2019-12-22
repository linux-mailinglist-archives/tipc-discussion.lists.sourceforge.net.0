Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F60F128C47
	for <lists+tipc-discussion@lfdr.de>; Sun, 22 Dec 2019 03:26:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QczmK0R5q4DFXdzyiFenifoKjEJyt96ic5ly2aTASwM=; b=EqxJ4G16nTmKRaCJU4WLdbNOA
	nLbnotO/eBhUq6tp6OUOZFEaHZ5/tolZ1fROr8Ll2tLkYYhfrFLhKai2Nem9k8gNJcwPacP69ZPjb
	IIFlA75N72dsWpAyL/aNLFP+h85GC7HyB/phDPQAAJ0Y3GL+zHCXj0yo+4ML8ChdC3e38=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iiqwz-0007nd-Q2; Sun, 22 Dec 2019 02:26:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iiqwv-0007nN-Jd
 for tipc-discussion@lists.sourceforge.net; Sun, 22 Dec 2019 02:26:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:In-Reply-To:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FUbSTpoopqyIY2jjNb71+Xe5iplddUd/irQeLg7RKHI=; b=GTnZrpMRsskjVka0bbk/nooAm+
 K2gmmNCM5tp0nCX1nN5+RY27lalgNHVfJIn7h8INiR7KQAKox1wDaTBDT1VFyPvzWxMAxSr4+vFfI
 LP/n6NDoV2qpYDUOkclbS7pPW1MP6WYinq1cm4nKrd9eVhi8Xo50z7Mfw/OTAFZMDyLo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FUbSTpoopqyIY2jjNb71+Xe5iplddUd/irQeLg7RKHI=; b=O/3d9AeVWTdKGiNA2Tm6kDzWXm
 LXf1XFSXfDFunnAqELFsNTsdG54FKuROiYJfAIsaRzKsQcqDGg3PZ4sXZrVgUV6SXFopAK98vxifz
 8QlKCRd9GwBcnSZhKfUx+AXp+zIhmet2y1o2VOUlYhOZrfrsdNmsJQCF4fQqibGUA/1U=;
Received: from mail-eopbgr50070.outbound.protection.outlook.com ([40.107.5.70]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iiqwk-00C6T9-KF
 for tipc-discussion@lists.sourceforge.net; Sun, 22 Dec 2019 02:26:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ei4mxcyTgSTL6R1IXCCpkmSogjhbx62vFb4OPYh8R7OVmxQ01f7bagIxNv0v3DzuOIGbCoXR8kRM7m+fgj7wSEO3GH/WOrXAbFSgwG1X3n3c7JKw8lBFSEzl6g5lujCY+f7o8H8ZGh6pNT4JdwxRluBl81VtvEIuUdYew1Fq3/ZHCF/pBdS4NaSS1gUyPA/Zd8sEUMgM2KujSkdJrE/M86wOXos/7yTOla6s3s3sDlCP+KYihX+/CPW4uSlx1Rp2Jza3eaRSBLRkS85XaUuBxhg/6VpgY+YjLdeXTn2NxNz2JRBL10GruBQ9okB7Lu2fVc/KbUpEiUFILO5DVKSrhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FUbSTpoopqyIY2jjNb71+Xe5iplddUd/irQeLg7RKHI=;
 b=NRXzwjkBCU9/lLqLdyLDDuqiws1WtHWprA2Y81m/nRzXrPkuuTp8PNzymlGt5DTaKhcEOX4zYd9vPaXpt/hCIh3KYpkVJeaJWpglOb5fag2P9m8JamPUH9yfdrdaPIHBQwyT281bbVPCsODRT90J6QcXEGbz3ILqGzVChHZoiF/jFSFaPfvAAsvm6YP1/WHlOrN/d8CPETX5q75WPCFLeRtIz/X82tBseQommo+LnqIKyQ9riWeV6ruWiH9vNJ07RcaG4zLd62YTX5YHwGyR5PyFiIWUuxGPCqdjfbEbdddHyVBJvKKITjWE92pngZpJGaOWxKRqdjOln0IRP1Yo+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 192.176.1.74) smtp.rcpttodomain=lists.sourceforge.net
 smtp.mailfrom=ericsson.com; dmarc=pass (p=reject sp=none pct=100) action=none
 header.from=ericsson.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FUbSTpoopqyIY2jjNb71+Xe5iplddUd/irQeLg7RKHI=;
 b=uPUkCWQP/IWNugP5vTJPw+LRUxRISoRWgUeFCX1XzAO4mOhp0AtPh4dUEYWPznDmeorWRMMbrCa9VTeuzkWhIC5UfsSQL12IoT11qE7A/RCWyeE5IexaRrlZptULCVMZ5DJFs/ktVQP5N/vnZa6VDE8uc0TbRrroYvDExEo0gt0=
Received: from AM3PR07CA0073.eurprd07.prod.outlook.com (2603:10a6:207:4::31)
 by DB7PR07MB5080.eurprd07.prod.outlook.com (2603:10a6:10:2a::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.12; Sun, 22 Dec
 2019 02:26:11 +0000
Received: from HE1EUR02FT028.eop-EUR02.prod.protection.outlook.com
 (2a01:111:f400:7e05::209) by AM3PR07CA0073.outlook.office365.com
 (2603:10a6:207:4::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2581.4 via Frontend
 Transport; Sun, 22 Dec 2019 02:26:11 +0000
Authentication-Results: spf=pass (sender IP is 192.176.1.74)
 smtp.mailfrom=ericsson.com; lists.sourceforge.net; dkim=none (message not
 signed) header.d=none;lists.sourceforge.net; dmarc=pass action=none
 header.from=ericsson.com;
Received-SPF: Pass (protection.outlook.com: domain of ericsson.com designates
 192.176.1.74 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=192.176.1.74; helo=oa.msg.ericsson.com;
Received: from oa.msg.ericsson.com (192.176.1.74) by
 HE1EUR02FT028.mail.protection.outlook.com (10.152.10.102) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2559.14 via Frontend Transport; Sun, 22 Dec 2019 02:26:10 +0000
Received: from ESESSMB503.ericsson.se (153.88.183.164) by
 ESESBMR503.ericsson.se (153.88.183.135) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1713.5; Sun, 22 Dec 2019 03:26:10 +0100
Received: from tipsy.lab.linux.ericsson.se (153.88.183.153) by
 smtp.internal.ericsson.com (153.88.183.191) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Sun, 22 Dec 2019 03:26:10 +0100
To: <tipc-discussion@lists.sourceforge.net>,
 <parthasarathy.bhuvaragan@gmail.com>, <tung.q.nguyen@dektech.com.au>,
 <hoang.h.le@dektech.com.au>, <jon.maloy@ericsson.com>,
 <tuong.t.lien@dektech.com.au>, <ying.xue@windriver.com>,
 <lucien.xin@gmail.com>, lxin.redhat
Date: Sun, 22 Dec 2019 03:26:03 +0100
Message-ID: <1576981569-27482-2-git-send-email-jon.maloy@ericsson.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1576981569-27482-1-git-send-email-jon.maloy@ericsson.com>
References: <1576981569-27482-1-git-send-email-jon.maloy@ericsson.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:192.176.1.74; IPV:; CTRY:SE; EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(376002)(346002)(189003)(199004)(356004)(6666004)(44832011)(86362001)(8676002)(2616005)(956004)(5660300002)(426003)(478600001)(186003)(36756003)(26005)(316002)(110136005)(246002)(7636002)(336012)(8936002)(70206006)(70586007)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR07MB5080; H:oa.msg.ericsson.com; FPR:;
 SPF:Pass; LANG:en; PTR:office365.se.ericsson.net; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ebe8aa15-6206-4c5c-e862-08d786864f38
X-MS-TrafficTypeDiagnostic: DB7PR07MB5080:
X-LD-Processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
X-Microsoft-Antispam-PRVS: <DB7PR07MB5080809827EBFA3BBF502D299A2F0@DB7PR07MB5080.eurprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 02596AB7DA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WcFtrhX3WRTzVkXSdthu0QzIyQ1d/WDC5DEwXLGQAq3MA1gMMwDanWdFN7z8lTL427Qvy4eb1X/AQtuiHIr5HDkdweY95rJp8+0FVHF2KZRuYrXs0xx1B8DXECtoa6sdMlRpHCDxkku2pOeQ45VFfUOQfR/BnivreBjcu/Urqk/W7/rLwOB7yzc7/RO+Ba4bGEmtoypnBBgMeGkO+46HBv/eQYXkMlvZbuhWq1yoBCvws3fIW0qOnUZ9YAxnaQnffnWQwHJC24hG9lozVy1rQ7HOCL1G+n2TD827r5uikRu/oBSLf03A16WFkqTzKL0J+0cfhZMCBo6WhUBfRyzu6pF+vVTwBG3AKJbs6EQ9ENTjxb9wVlbc/MigM7dT+aAs6bWTimO5CmuBD91oZ9Tx6JdHnIyNhPpfBRjleyQUwtDXiXk+kUhTuDdfGGUBaQ+p
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2019 02:26:10.8773 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ebe8aa15-6206-4c5c-e862-08d786864f38
X-MS-Exchange-CrossTenant-Id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=92e84ceb-fbfd-47ab-be52-080c6b87953f; Ip=[192.176.1.74];
 Helo=[oa.msg.ericsson.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR07MB5080
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.5.70 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iiqwk-00C6T9-KF
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

The code here is proably not very robust, especially regarding failover
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
