Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 17826336ABF
	for <lists+tipc-discussion@lfdr.de>; Thu, 11 Mar 2021 04:34:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lKC5G-00016x-M0; Thu, 11 Mar 2021 03:33:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1lKC5G-00016o-28
 for tipc-discussion@lists.sourceforge.net; Thu, 11 Mar 2021 03:33:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mf2IMQ5oQssSJiD/7gbnrV+fH2OU6xJAHR1DqReUfFs=; b=KBYOO0nq2crliNWFe/rpIw33sR
 O5BddStAmQ4lFm9wDbMFe/A7DUwAmroY4nYCXCEYUjzoKTguR0cyAm+pH/Mbf2qkLjYl5cGtlUFHo
 OC/BjfDrHluPqjcfPflJPvfd4s9euOznVS78Ns/Dj1a8UkzWz2LNt15kz6au625tLfEA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Mf2IMQ5oQssSJiD/7gbnrV+fH2OU6xJAHR1DqReUfFs=; b=G
 tz7vmjmQhW6ID65PKHVnVOGRXKKsoSSrBQ4GGJVdGDd/vsGwWRy2KDR/l+SCUgPV5U2aLkqXp4sPK
 4KomJIDx7tHe4r0d8VxT4GnTArLhehbRK/kTzJZqQmshC0rRtqcD1nOD0CoAJX4ykEArEOi2Y8ihd
 H2W4r1/g5Iy5Y0p4=;
Received: from mail-eopbgr60112.outbound.protection.outlook.com
 ([40.107.6.112] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lKC56-0001Rz-3K
 for tipc-discussion@lists.sourceforge.net; Thu, 11 Mar 2021 03:33:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=doH+xqy93DCk7fU+gKXDYzAcRXn4/gv9kpErBrnK8DJlRAD3zEr5OqD6mfVIb29itCEfBw6OJMRkIaK9lQGJSx/0kgnSoHmTd/riy+WwbVefrixIOpyXdFtDPiP2+RSbrMOFfA2+X9F4Zax8vM0VMmk2PjU5QgPqMmhWoFOxIa0nagniWGXn6+k+bKv3DJfrDAFKLTv2wZu3vsDsoFII3o3RgItUpprRD8DmQCrhMvDDYHBwq6g4pel6PI8f+8OfaQItZ6ZpEeOr18bWqkvQBJPEmek7vKnS1el4dJYHsDFYn98MjRIwPsxRPC3B7rjvCCudgh4fF71HFl9wpTPLcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mf2IMQ5oQssSJiD/7gbnrV+fH2OU6xJAHR1DqReUfFs=;
 b=YB12pMefku9m1EKKYf+ekC2Xk3BteBqDGSq67OiiXscY48CSNozzRGHxmokQCUFxDI+clQSQ2aRgSfpOi15fOU13y6DIC2rw2JOMa10ziAXnZTLTppcNDd45PQTkulZ8O5SHwXMXt7EKSvb+gbypHujoePRLqTiEXLy7vy2z80D+HJEaCPk500k08gOIjQkR+/Bp7CUJx5F/UWN8C7Uy5CTzr5XWU3dCiruYraOAV9+1KbgkECtUZyJpuOFpU+tVOcxnD+nwarY609fokrmNAzaIZSxIT09ALQR+wpuQxtsfyAJA31tVCiIi4GlswFQQ08z8BsXXh0ts6Qfs37IjRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mf2IMQ5oQssSJiD/7gbnrV+fH2OU6xJAHR1DqReUfFs=;
 b=LYBSfT3KOgXgN4/lCEyswTt7NnHWr3GvNLuFwqVvRJCKrJf0afkDqJgdEqm2yhdrPX3bef3LxFEItJ27ls31A0e7T/4gIDFjy88iV+05HXlpVDKObfF0TVxIyrqEtLr4uMeX+MR+8qXNh/LONCMiaZOV7KWpgLnJVB4iYElfRaU=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB6720.eurprd05.prod.outlook.com (2603:10a6:800:139::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31; Thu, 11 Mar
 2021 03:33:37 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3%7]) with mapi id 15.20.3868.041; Thu, 11 Mar 2021
 03:33:37 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 kuba@kernel.org, netdev@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net
Date: Thu, 11 Mar 2021 10:33:22 +0700
Message-Id: <20210311033323.191873-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [14.161.14.188]
X-ClientProxiedBy: SG2PR0302CA0003.apcprd03.prod.outlook.com
 (2603:1096:3:2::13) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 SG2PR0302CA0003.apcprd03.prod.outlook.com (2603:1096:3:2::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3955.9 via Frontend Transport; Thu, 11 Mar 2021 03:33:35 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bd737322-f434-4a73-dca5-08d8e43e749b
X-MS-TrafficTypeDiagnostic: VI1PR05MB6720:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB672039271D2E28BD993BEEC6F1909@VI1PR05MB6720.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2887;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1Mn/DvdEDrmZPKlD81XZhLQCpv+6dh2FIflNrKnvkpal21dqtJKJnIwE1a7p8urYa/EnySUPmAK0q++bLUbVlbeh+RsKQXhlvWf29GxDQGAaB/5fL8rGUCFDr/nnIKohiVugZ9LAYWN06vMeiDdMKhQxbqZwynxRmZ0ZlMLPwx7NxHmbnk8f99GtqpA8/HU2JSnFcAG9wAN2RGgrGeZLiTfWCmLhg5FX4pz74WVfFZQiKhVMWIUNP25gl8JxX5evBAjvivSCSZbsfq3R59/EgqpTD6qNGkD9B7ckE/vHXpXuAhse8pcHE91HOp6Xf/da+p5v2xQC/LPdcGPBI8eZr02bSFAhyuVeFI/jO4LEXpxUrIHJhrPZLxtJy/b54QEE1G41XB3gVmXnqsJ5y4lCKYN5d4sfU6IxYidXzxQtaHYPxzN6JT4MBcL5jMTAQu51wvv8qWumN0RxJUYlhiMmfRzG4tr3VmmxHNHJOyq3Kaayn2K8qXL33/fr6/TdnUY2f7It/xcgCUush1utt6oLS5S0UX8YhX+gvN44tVC4d4zS/ZTqeeOhR5f9wB3Ctx2f
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(136003)(39840400004)(346002)(396003)(376002)(107886003)(2906002)(36756003)(5660300002)(478600001)(1076003)(16526019)(4326008)(26005)(66476007)(956004)(2616005)(186003)(66556008)(66946007)(8676002)(6666004)(316002)(103116003)(7696005)(52116002)(83380400001)(86362001)(55016002)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?btWCpyhAuQF33S8y6Wqo5ruX7bfDd17Jw5CsO3dQQ0/Dc6wpiFOZK2HAbW8w?=
 =?us-ascii?Q?vpah6+wgHAoM1ZOmLzqh7yOAFt8HeXcsAUFj2kZ492u7EwS963x++Q84BK+w?=
 =?us-ascii?Q?6i2vqHC/c2VMwMI5QLpoHzX94hOjbGvEYRWCJd7uJjx9XFSs0ptvZLte9lAP?=
 =?us-ascii?Q?5W0/mvhWsscRbXxIPcJ/yPyqoXdHabxLShgZXAK+aZ6RFOvbbSHFbcGoONvn?=
 =?us-ascii?Q?YWsbPZLtdob3dQtiD20YzM8vC4H2c7331KioP2MR60q7L6CQj6hBuUKDSNBx?=
 =?us-ascii?Q?6Z09Ba0vMEF+TX8hEJ+v1qXktDotLeoPlwWJVMGDvK9m4Qt/Dsyx29W+gL8R?=
 =?us-ascii?Q?Stplr+dn24rPxfOd8GbU2yQK6mFbGvI7SE3j2IuThI9RATbUNJi1TLDRcA2n?=
 =?us-ascii?Q?Pj8roDRrq9RSiQ98Qu+Sbz0aXBMSPRhL6PVi74q7evHln0y896KO+nBck9bn?=
 =?us-ascii?Q?eNhAf8PWPOn7TaEk83H4yEmqA3vFEqLABHWCX5igkK6d+vI4OfbXWt7qacSI?=
 =?us-ascii?Q?P6NuDngBBMiusq7pExuaeEioP/+KFCg7+21ClsSuewCmAQrWqev0EkSlZeVU?=
 =?us-ascii?Q?n6tV4h9fh2oMGPhDzTBDTcmYHO910rz9UDJk5AcSAi2J2+FDcX9DPI3ullnZ?=
 =?us-ascii?Q?Nw8eVJ6V94u1xRbOPw/zvLg1axxxwBjc1JqqULx/qjqvGxS7iXlsGmE/KPLL?=
 =?us-ascii?Q?Md50D43goFRz+80EoY9kBfDqHJU6WjoY5jOGwKpaLDbVxweMEvzwfa9Hk4MW?=
 =?us-ascii?Q?WOTtWJZzjzIOhsUdzRrpHNrROl6sPrtDTu/6IWHag1hSPuvhWydTPmr1CwhA?=
 =?us-ascii?Q?JDeamRJ8fh5rKmHTCkjIQEf6hnFQm629S/sGSuvKfeEyy6xJXBXJR96WmYWe?=
 =?us-ascii?Q?6Q3xDfdfpprdna59JQR6M5RnKDW5SayyOxa8H5OJkRsH7KhnJtxlNQr3QOeC?=
 =?us-ascii?Q?EBiVnzomh8g5v03qGRcQYif/GhPhkqqs1IiZp3hAMoB5aJbDCScal9o0jLxd?=
 =?us-ascii?Q?EP7uqEViW8ZtIlRt1TVYoqFf9i9sYlNs1KsKTma6Q67MSd5fAFekIK00NmMA?=
 =?us-ascii?Q?iYCDn0FC8XYCn1Z9mo2RMy2noc6lYxbKvqLFdc341pbJ2GpsRZtwr387bQg9?=
 =?us-ascii?Q?17+p32uwKoB3V0YKG7aLSPVobZwgEu29PVvpKO2Z74KaibhniOAX190GA/e1?=
 =?us-ascii?Q?4cu4TeBraGHU3gvtg7FSoMAhUPekOrKSzeqjUwDGzhvovknzCp7djcHqQFpg?=
 =?us-ascii?Q?RoJFUzQE4tRFfbAVWlsScU8R7yGzm6HOpxEsretDwGJtyxuFALqi/GilMZCE?=
 =?us-ascii?Q?kT2RvxM/FUK1+Ztb4WJVsSPe?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: bd737322-f434-4a73-dca5-08d8e43e749b
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2021 03:33:37.2169 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KAGuraI0tJE7yZEqpDFA0lUDa2rY+gkxf3RMssDb1xiuDWPFDB7o6znBg0ZEpSmtCd4EeU+V7aaQuhczunOenwGGxiPCdNA58bMLiSP9/N0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6720
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.6.112 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.112 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1lKC56-0001Rz-3K
Subject: [tipc-discussion] [net-next 1/2] tipc: convert dest node's address
 to network order
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

From: Hoang Le <hoang.h.le@dektech.com.au>

(struct tipc_link_info)->dest is in network order (__be32), so we must
convert the value to network order before assigning. The problem detected
by sparse:

net/tipc/netlink_compat.c:699:24: warning: incorrect type in assignment (different base types)
net/tipc/netlink_compat.c:699:24:    expected restricted __be32 [usertype] dest
net/tipc/netlink_compat.c:699:24:    got int

Acked-by: Jon Maloy <jmaloy@redhat.com>
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/netlink_compat.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/tipc/netlink_compat.c b/net/tipc/netlink_compat.c
index 5a1ce64039f7..0749df80454d 100644
--- a/net/tipc/netlink_compat.c
+++ b/net/tipc/netlink_compat.c
@@ -696,7 +696,7 @@ static int tipc_nl_compat_link_dump(struct tipc_nl_compat_msg *msg,
 	if (err)
 		return err;
 
-	link_info.dest = nla_get_flag(link[TIPC_NLA_LINK_DEST]);
+	link_info.dest = htonl(nla_get_flag(link[TIPC_NLA_LINK_DEST]));
 	link_info.up = htonl(nla_get_flag(link[TIPC_NLA_LINK_UP]));
 	nla_strscpy(link_info.str, link[TIPC_NLA_LINK_NAME],
 		    TIPC_MAX_LINK_NAME);
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
