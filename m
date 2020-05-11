Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3587F1CDBD6
	for <lists+tipc-discussion@lfdr.de>; Mon, 11 May 2020 15:53:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jY8rZ-0006Ad-Mj; Mon, 11 May 2020 13:52:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1jY8rY-0006AE-3d
 for tipc-discussion@lists.sourceforge.net; Mon, 11 May 2020 13:52:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KzZ2wDLp8yH9RbXojArS41PbwMQn2pza6oa4Up3mnt4=; b=OnQyALmRzFG25hTguHYlHR58NB
 vX/nphDlgDpGuIEJDFvR4OvrtIAia4c/Frx6nsqft3fkIpYu6jMKfSH+ukSrxwZMv2oYRoA3BpDCR
 EtxCuGojR9azecXDdUytB/OD3L+gBxh8lgm8Lyn4Y8eWUJhSDaQDm4pkWlSy3fP4HVs0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KzZ2wDLp8yH9RbXojArS41PbwMQn2pza6oa4Up3mnt4=; b=RtyRiN2xo5Ei9pmJ6P/HHHbXOe
 KYO9aFfYkZgtcARaj/eySLmbtm/y6YEDO9Xhbo2KfQnCRryHNJk6yHhfprzuoxpWPQXe5h8WZcoUj
 AZRp5uA6uYAy3lzXDdutWPnJC/96r2sx/jNTa5nnn5hbFt/Hfw0C40jTVXo+gqngthes=;
Received: from mail-mw2nam12on2053.outbound.protection.outlook.com
 ([40.107.244.53] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jY8rT-004FrA-R2
 for tipc-discussion@lists.sourceforge.net; Mon, 11 May 2020 13:52:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I5N+Un8zxehPFSwliE+ukZH5Wj19C0FpVtPqhpZzfsqhpLF+RSUMLj2rTOgeY7OuE2bYyalX2R/47iKekCD5bB3gdeMCNQf/p1aUD85Cz7QRbolGIgObJuYiOlbfJvMgpVn2tbi/p/9TN4BjrSeU4foPckAsirFL9uNlpWJKCrdpvtvu9eUm5uNfAeXKM8n1IrMde+cXW/a6AJom6tX120exCor0/aUGcE5YVWxzDtxe6saJArdPHWW8c1SBnFWQ2SvCigkLEVVC1pWTt93kYSkxhAMFhiT+hDOuptmvY4o5SMP3HUu8NOSBfZNiceLchP8rZXjCAO1N9jXsU6bSmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KzZ2wDLp8yH9RbXojArS41PbwMQn2pza6oa4Up3mnt4=;
 b=SwMCxXgm0caxuegwEXKkYF3OFqjgc3qPJ/d2H0G2Ms+5dA1je95mNX318mUsCDZbE1Tt4xfG01lfheCG3tZkTtCFmt2xsaSewoO4RZ6veF11evykWSAVFSp4I9s7xhuol+VkKCznPzxIfoRVLarF+dZdcZFctk4/onUMRKyL7XwfOZx8ctkaO726kBNUmSdZrjQzaDlLA5Xo6mwTcAkYESASQwgEwlN0mpsPa/tR2RhrIQJBKKYMM3p9BNjTzFZV8FG3jDQ75I+hi4jGvpLjvLXLsh8zyY/LduU4NaNpRPZUdIFFU/RKTSwamKHqf4oMqFs4MHeoLxSjbpodVIRVdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KzZ2wDLp8yH9RbXojArS41PbwMQn2pza6oa4Up3mnt4=;
 b=ahRddBArEbCA/3rCp0UkZ7qOsa64C8O47W+pxxopvFnZdBNmtu/1WwxTs5ohM37ivfSEb3oBNIRNSS0Z7Rf731NE0cCfPUkOHaY0g2kLuuWIHrKry9VLyDi8Ty1VZe1ZMavQ+9pbROw1TjfVTTe17DR/VjKBOvb4X4/a5iOI4ns=
Authentication-Results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=windriver.com;
Received: from BY5PR11MB3894.namprd11.prod.outlook.com (2603:10b6:a03:18c::20)
 by BY5PR11MB4119.namprd11.prod.outlook.com (2603:10b6:a03:190::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.26; Mon, 11 May
 2020 13:52:37 +0000
Received: from BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::cdc3:c78d:773a:7dc3]) by BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::cdc3:c78d:773a:7dc3%7]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 13:52:37 +0000
To: Hung Ta <hung.ta@openclovis.com>, tipc-discussion@lists.sourceforge.net
References: <CAH0Ghhvy9=hq8mBh61iag3-PMAFBMpmgaJWq3VmQA9szzLP4KQ@mail.gmail.com>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <0d26039a-cc0e-cc0e-5b82-4492b38e75f6@windriver.com>
Date: Mon, 11 May 2020 21:37:30 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
In-Reply-To: <CAH0Ghhvy9=hq8mBh61iag3-PMAFBMpmgaJWq3VmQA9szzLP4KQ@mail.gmail.com>
Content-Language: en-US
X-ClientProxiedBy: HK2PR04CA0049.apcprd04.prod.outlook.com
 (2603:1096:202:14::17) To BY5PR11MB3894.namprd11.prod.outlook.com
 (2603:10b6:a03:18c::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.155.99] (60.247.85.82) by
 HK2PR04CA0049.apcprd04.prod.outlook.com (2603:1096:202:14::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.27 via Frontend Transport; Mon, 11 May 2020 13:52:35 +0000
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 60cee16f-fa8c-492b-6118-08d7f5b2901a
X-MS-TrafficTypeDiagnostic: BY5PR11MB4119:
X-Microsoft-Antispam-PRVS: <BY5PR11MB4119845F7C1403A8DA95C70584A10@BY5PR11MB4119.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PWtgFHTaR5rkbLlNyVbo9B8i9/DXjC/DopsoAqr5SNshw6tB55789mdy+9bFLtXn7ZMJAqbb7w7vuroZeMHyJbk3wGqeqE/+2urmZPB4Kfx65rTo669nN0uwFCEm1C3S0jlix9NFEmQOAY7rlMkUseeTjrH9WDJJsF2q1VAxzA3e9pB6D9PZz2VbFm05l/4uVu0AtNvA1Pds+JTb+m6xw+en0YBScYDvj/AcG0RxG6FsImbiIt4w5kTmB0Y/M70wah1NIhB89TBqdysPxoiro46eiMl6DRh5JJMouVCNe806oITyIOZsuDLbhAUTAFslkbcIqeZ2Z7COHjjawvN7Sm5rEvm0BvI8DiT9mZhIuOcDtX/x2WbjUPM8g6HvaeyMpVmc+eVlel+RlSB9kJIcdDdSXGyVwFFPkedBNmLbLfw0J3s/q52uyQpeU+u6Z3huEnZHDibGuFneFB7lFIF2zfM/t2EhGVMXoh+KKqOwcupZR74ZjeXc8U24HthhuoPX4p8yFLJu3doNizZzTVwR7+h2VNuQb/i3o5Nzd+5DXwmiVKgU9E1EYei8GMXMtLzmO3CdTD1zXO5tDT+Gw7wfNy4JpyjH5vP+0cRjeVXVGA/czVDSO5nDYc0HaoNv29oQZ9u3vRsff/1vW1ONDylGgyKnLjvFgmUDu7XPiJckVFwm7wYFLJPssbYyRHv66T89ZJaVPW7hRripuT+ZfQYoWA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(376002)(346002)(396003)(39850400004)(366004)(33430700001)(66946007)(16576012)(8676002)(316002)(8936002)(5660300002)(6666004)(16526019)(186003)(52116002)(26005)(53546011)(966005)(478600001)(36756003)(33440700001)(6706004)(31696002)(2616005)(956004)(31686004)(2906002)(66556008)(66476007)(6486002)(86362001)(44832011)(78286006)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 9U2+Sed8W5V4/zLPLDBtJUPydxKE1RqeojuK9pfuAQHWBVRd3v03Y+afxFIA5pKLQwkALxOhgNZWUoF7YmRFdmsUSs98gK8enjbNJ1mwfMFh5SE37zkDN/GUPO3nR7mVcyVYMlVB+iKf74WCSIiyVKDRT+DalVIB8k6IHrhh0s3uiFkCKHa4XTw/203ULGh1rsgUTTJEcGRgTYJZ/VTeKscbzMZFyYOj/PmJiH7VMGAMReUlTZa+KYGrvIBA2FrU/HXnoR03GyxqhwBPSySVhXF7lHx8qnQip+Gk5Kw47bx9GCsZYOPJSg/CCEAZM1qQTfZqozCcajtMCHWY/cxOdh76f9/BPO6in88y30YvJuc3aDaUv+ZOg23JS48I9mDuXrC45N1ExMuqbHFj1hKflbVtrS/TfVy7df3G5q/c4J+yxVha7CnfzECP6b+ATTMtz200vCVAkbN+L+XuMXsXaOkJY5u+5VBrvrWXDtxYnNM=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60cee16f-fa8c-492b-6118-08d7f5b2901a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 13:52:37.0064 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L85aIVlodwQTmA4y8gpuuc3RfxRh6HPit0ursgYDxJOLKKntts4a3KwVMcLoIvNS7PBMXGLsiqHNtR9WWySGIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4119
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.244.53 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.244.53 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jY8rT-004FrA-R2
Subject: Re: [tipc-discussion] TIPC_WITHDRAW event comes late
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

Please validate whether it appears with the latest kernel.

If you cannot, please provide more detailed info:

1. Capture TIPC packets with tcpdump tool;
2. Provide dmesg log, but be sure each line of demeg logs should be
prefixed by timestamps.
3. Print timestamp as well when you receive TIPC_WITHDRAW on user land.


On 5/8/20 11:01 AM, Hung Ta wrote:
> Hi TIPC experts,
> 
> I'm using the TIPC library in my project which needs to be aware of a node
> leaves the cluster.
> 
> So, I use socket type AF_TIPC and SOCK_SEQPACKET and connect it
> to TIPC_TOP_SRV.
> 
> I tried to get several nodes up and then make one of them leave and then I
> can see the event TIPC_WITHDRAW seen, but the issue is it comes very late,
> in particular,  it comes about 10 seconds late after a node left the
> cluster.
> I'm using Ubuntu 16.04, kernel 4.4.0-87-generic.
> The same issue also occurs in Ubuntu 14.04.
> 
> Why is it too late?
> Appreciate your help.
> 
> Thanks and regards,
> Hung
> 
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
