Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A51021CDA70
	for <lists+tipc-discussion@lfdr.de>; Mon, 11 May 2020 14:48:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jY7qr-0004UI-S1; Mon, 11 May 2020 12:48:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1jY7qr-0004UA-3Q
 for tipc-discussion@lists.sourceforge.net; Mon, 11 May 2020 12:48:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=db54VUeEmugGGLt2CKK8aGI5vSARWApAVw6bs3U4Ow4=; b=kBTBT20lBHiODicYQ+rrJGDnXO
 FU1cJx+AYuwEP3NplDuBHQO0fiuwMr45vXTLM/QsFgZtsMpBOIPLsVFm2GPKv2vBRDCfew1gr1mJi
 c7aJmg5Zy/cwG0rbffNeVjBS9wtZiS7TS4P3TRs1UVM/BPkhSQzA+nJV/p04Rd4P7HJM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=db54VUeEmugGGLt2CKK8aGI5vSARWApAVw6bs3U4Ow4=; b=Mg2HrxpP8R8tprYil0cx8NNTmr
 kAwv0xIn0gz9JSotGAqhZe+lwpeta1okWaRhyyvi0ErNnspFcG9fFG6ow1WGNE6DiH97t4eQc3BFh
 X8h3cYTxRiAucYkOo0e3URInI8H/zkIRZeRfFcWrwJYU2fKhKRKob0/gavwxQziS9UTU=;
Received: from mail-co1nam11on2084.outbound.protection.outlook.com
 ([40.107.220.84] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jY7qp-008q2d-6I
 for tipc-discussion@lists.sourceforge.net; Mon, 11 May 2020 12:48:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PwJN2xwHJofbrluyvc7oaB44hYmOExUIv2wgKRMQ06sDzvMtGgIrwHK7AXRVFtX42T1aTcBrhOssS8MIVBSwptJWqLjdc4Veegi6JlxzPwi5RVmHq8aQxB8YHM38fCrQMhVGGODqyaIVv7ue9KUxbRNbfptGPgQqDTox8NBqzIXP7hSexGPu1Ps/gzPi9elwLzfKoLnTLAYp6/v9aZTpuMVITQFYCXKF73u+1vXqbna6k1ai5qYUjrxt6pUI8zpC7LPVoN1xeCIeKJYnKBaZ/z871wlu14/fd0VzOohgomvbTZ2WNpJIHWgth75JZ7wSHD/HvddYb3xLPHJ03BBW/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=db54VUeEmugGGLt2CKK8aGI5vSARWApAVw6bs3U4Ow4=;
 b=nCgt8GCPOqTe4oN8/AjU14CU/LuL/NfEVzEeQKYi11coLQ9IoRz8qM/3WkQ2mPc60rWPzoy9/Pvcq/KeygCBpFxXrNNk7du/A2J9Y3PUz6MDZ0rbzRuRw7C/SytZl26pZODrTVUFRIjyL8nk1h+zIbeOoAtuOX+ovRaid8QtNNXVPr0VdC7D5eMxBH1o2fkeWjHvA96ZMZmhS2zM8eN9sTen+Tn6TSEiy7yQcwABOv3SEhJQKc+EfDNd2qVLhgoIbIDDZo4Q4yTcxTxp+9oLHjn35weFW7IzdKV3ZCCSj7TX3GQhX2L1gXy/99Ed/9zwRUIOpg3mxRgxmQEglRbg6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=db54VUeEmugGGLt2CKK8aGI5vSARWApAVw6bs3U4Ow4=;
 b=kXq4Kie0jZC7LRAlQ8zupUruoJ0BATSygu+w0/rlxpArSKKB17Pv9TdpZGQOuZtUYuTu8rafTPbg70AN+AeKYthweFtoMov0ihS6ZJ29/e5YXY+A94D+gIW2++BaZ1HcmqblnP3cjuNgPCbB/WBTm5TvTZ+NR9jU7qWBbS9tUO0=
Authentication-Results: dektech.com.au; dkim=none (message not signed)
 header.d=none;dektech.com.au; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3894.namprd11.prod.outlook.com (2603:10b6:a03:18c::20)
 by BY5PR11MB4056.namprd11.prod.outlook.com (2603:10b6:a03:18c::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.26; Mon, 11 May
 2020 12:32:30 +0000
Received: from BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::cdc3:c78d:773a:7dc3]) by BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::cdc3:c78d:773a:7dc3%7]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 12:32:30 +0000
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>,
 "jmaloy@redhat.com" <jmaloy@redhat.com>,
 "maloy@donjonn.com" <maloy@donjonn.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
References: <20200504112826.11186-1-tuong.t.lien@dektech.com.au>
 <20200504112826.11186-2-tuong.t.lien@dektech.com.au>
 <BY5PR11MB3894E4C56D34E5F76F884CC184A20@BY5PR11MB3894.namprd11.prod.outlook.com>
 <AM6PR0502MB3925EEF5E2200531FB6CCFE8E2A10@AM6PR0502MB3925.eurprd05.prod.outlook.com>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <7eed4d6c-a4e2-6205-a464-c85a7185d2ae@windriver.com>
Date: Mon, 11 May 2020 20:17:27 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
In-Reply-To: <AM6PR0502MB3925EEF5E2200531FB6CCFE8E2A10@AM6PR0502MB3925.eurprd05.prod.outlook.com>
Content-Language: en-US
X-ClientProxiedBy: HK2PR02CA0143.apcprd02.prod.outlook.com
 (2603:1096:202:16::27) To BY5PR11MB3894.namprd11.prod.outlook.com
 (2603:10b6:a03:18c::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.155.99] (60.247.85.82) by
 HK2PR02CA0143.apcprd02.prod.outlook.com (2603:1096:202:16::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.27 via Frontend Transport; Mon, 11 May 2020 12:32:28 +0000
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9df40b1c-84ce-426e-5599-08d7f5a75f30
X-MS-TrafficTypeDiagnostic: BY5PR11MB4056:
X-Microsoft-Antispam-PRVS: <BY5PR11MB4056B87C2D89B44D655BBC4784A10@BY5PR11MB4056.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: M7kleiThXyT71Mb4yUmdHJoBK50VYLTLrHJsVw37E2kRibpLErmUOWi4Vw0SyGGzOyXXbMS2avGzoLQCy7XmrYNgA+5fcsk4ccDK458paK6zzkfQ/bZFxG8HMXk6WizNl/wCFVU2wqd1+CQwFCKj0EFoE4MtnQ4MgYSLvpQKW155GW7kg7o1SBCqUvnOIhpa6YXbxr2VISxBLmz2S7V1iHME+2cWOwLTC4TuOuQTteXKuUblifreia4zXeg09FjiSGR0o8oEVCcsm7CP6JjqjN6p9y07CDIvht5BiLiTxYmGxMsc/w3nai59p2HmneaEFYt3oJJEbUy6TXMf+r+tH2pmRXkvpb9zymexzUzWKKkPDcAf0Lttscmg91NtgEhdY51u9uWU9YlqTaZdCEzoFWPb5gOQuTVAIMCRwSTIZs4930hNV9gK0tDRo/aVBdTg9qWQtS0WKHWGyPZ6AxH/nPbO83eJ9iw1Jt6jmmSSHxRfhOHcAdQVbCFaCA5j8Odu4Y4NKBZ7VUTtt8nIbBF6Gx2RmlkzNVLpt+TOiApuGN+A2v32WR1u4kySFGSZ1H0pp1eb/0URotkd7s/O1E7thUxGgWy9Dgzboz0VpG0izdAbsZRsuzNVn7dQScg8lJoQ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(396003)(39850400004)(136003)(346002)(376002)(33430700001)(36756003)(86362001)(31686004)(186003)(16576012)(16526019)(66556008)(6706004)(8676002)(26005)(6486002)(5660300002)(8936002)(2616005)(956004)(558084003)(52116002)(4326008)(2906002)(316002)(66476007)(31696002)(66946007)(478600001)(44832011)(110136005)(33440700001)(78286006)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: Ju8RZYh+vrW1ji1G9Elg8g+jVpcvQF2Hj0dqRZrA+JXqXScHo+CkynMmfxlv4L/ScoThxAc1483yyb6S5yrn1czABvd36gGez8TFHlNtIMHHw5QrWtn6Ev3zU2bxOyqRdhIYzosYYe8Y6gFTk5FWzmr5tta/kb2qRPhsWRtVaFHbKyz21e0ooGSarve5tXsr9PdmGJrTVIhBRjrphFodgPAOwwH1xv1RnaKmkrdseS6weKHR8Dwrv/xu4VZnsmIE9KTOBstmzxs7ROOACTeO6ufAOe6gorGweUaxiKgUxBMaI5GQ3Ru1idb/81Kgkb/75Iz1H0FZ+kiBBv9d19kI+Temv/UAmEFdJnbYL6xifKLHvBxfV2gzEgLhSvWIp7uaipmEAsuFrAQhLZ291bwgUHHRXITZr5sgZjQHD8Yh9O/FMew9cjDGVuNZAChTnu7hcIUYmp5qflLQftakqRPOpxMKSAM1Fr9WdlD/8aQ0D4k=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9df40b1c-84ce-426e-5599-08d7f5a75f30
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 12:32:30.4109 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gbVQKttfVnxWNSirVLVfyJlPirEx7YjHISBaZPl+29Icm3Xr3+DEr0GmNP2fYCHiGX5nmk1C8nGzuR7qCp6Txw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4056
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.220.84 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.84 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jY7qp-008q2d-6I
Subject: Re: [tipc-discussion] [RFC PATCH 1/2] tipc: fix large latency in
 smart Nagle streaming
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
Cc: tipc-dek <tipc-dek@dektech.com.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

> You mean for SOCK_SEQPACKET? But we don't apply smart Nagle to that sock type (only SOCK_STREAM), nor is there such code in tipc_recvmsg().

Thanks for the reminder. Yes, you are right. Please ignore my previous
comment.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
