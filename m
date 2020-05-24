Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 94EC71DFEEA
	for <lists+tipc-discussion@lfdr.de>; Sun, 24 May 2020 14:32:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jcpnO-0007A8-DL; Sun, 24 May 2020 12:32:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1jcpnM-00079r-SB
 for tipc-discussion@lists.sourceforge.net; Sun, 24 May 2020 12:32:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d4eteSS3iC00sLwC5CZhhI6v0RcL8j1dh2UGZzvNEQo=; b=YA59K4ltkvhXK9rHxgBPnt1IOe
 8wtQzcOE7ripmZNeoB/5n5knmUAWQ/f2Wue7QJwOeK41c4s3md8ElXq1vKQbhyjX87k1AdS4VkXtq
 pPHKvUtgt1D8D/Pbx56Jgrvqmc9BSM76GVzhC8mbok1TPJkcXrWVwqGcPPkSDcGx6imY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=d4eteSS3iC00sLwC5CZhhI6v0RcL8j1dh2UGZzvNEQo=; b=jIKsdh9xLD4ufvOQwo6hJhw4Ix
 t5GhNwCZUT774mG04YyYJr0S00tDvyOQ/JoYaKIPnqOJjQbpyeTOnwulEFyOmPMoFap4t6ZSNliNy
 m5yiG50NjgLEV8g3es0LFAPjjGUH2bam1q0SRex/SaGgVLvavJVLpReRYzZ9uat+HAps=;
Received: from mail-eopbgr750042.outbound.protection.outlook.com
 ([40.107.75.42] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jcpnK-006ygY-F4
 for tipc-discussion@lists.sourceforge.net; Sun, 24 May 2020 12:32:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EqNtck5fnlpYoswpMmviN4cUMRxw38sBWh+nQ3SwfNxg2+7+Wv0irc7oywPM0zHFjTI1dmJs4ZFmC7ue9tI/U2i4SIjcgVntwbWfysCspW/Js46AxKx5QmlorPQFNgEsiksBhVKe26NK5xxSopmlWXXInOYTeCGyfyY8a4fExlR2igyGUxNlqCUl68yUyKVLkZt62rWoeA1MzodU/EPQX+At67t8lsuWeMAV6XkTTWT7v3cqwR7iCgeFPCscOBCx1+WR+ML9TFIVaLnQ6tNDDSpJR9Cw7SRnsApUCP8Hv80KFfL/Cw0XopCcgQwkOX2uZpDNG2jlu4lBIWERImpngQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d4eteSS3iC00sLwC5CZhhI6v0RcL8j1dh2UGZzvNEQo=;
 b=WoVSh4To53pAHdO5nKuZUkW4KDYG1ilGV6+qqDSg8scB56ql0myzddvFW3VIHNFSIQFYTo9PxAJBCetXXoKXn+hPPWdnDizXhC2raRhb9t58iwbmQ7APx/L0R/8Fx2LGD+Mnrhc5QicoG6S/6K7K8kENNrqDMR0emEmzWz6GTrB3Hye7wjUZNJAj2ynbBm2wOJjVFQQIDkrqzkTfqhQ1m1ae7FDEIMgiO/giXPe/U63SNxQzLkzhudklKqVSk9er1l4Fi86lQ7JHAxtIodXA35wc4PLk1Wp0tFCpDXyfE4y4EvLqdVk1BsVi3FHnYZbFasyzJIiDtSRNl3G/wb4FBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d4eteSS3iC00sLwC5CZhhI6v0RcL8j1dh2UGZzvNEQo=;
 b=ORBvSprXx9wLrLEc7hJyxkJBudeHsC1ycdHIfZGSzZIxr91fuOmRiP9OmC/lEyzdr+rUokKXAE5bk/PDRYlbdrbSk39uIuVxuZuka5HCywYN77xFF9moOQ28EJwjrc6ap4Z1Tj5UC4GMcal2pzbUijRSvzkghHwFFqpZl4JHWkw=
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=windriver.com;
Received: from BY5PR11MB3894.namprd11.prod.outlook.com (10.255.162.20) by
 BY5PR11MB4006.namprd11.prod.outlook.com (10.255.161.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23; Sun, 24 May 2020 11:57:26 +0000
Received: from BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::8a6:a547:be22:818]) by BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::8a6:a547:be22:818%7]) with mapi id 15.20.3021.029; Sun, 24 May 2020
 11:57:26 +0000
To: Jon Maloy <jmaloy@redhat.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
References: <20200428015315.591224-1-jmaloy@redhat.com>
 <8ac216ab-ac6c-0098-1626-eee86595787a@redhat.com>
 <BY5PR11MB389467ECE2AFB1D9903EA25884BE0@BY5PR11MB3894.namprd11.prod.outlook.com>
 <e4bb9763-44ac-dab9-ac68-9b2211da6284@redhat.com>
 <7acfcbf8-429c-ca64-b16f-9c8a37a7698e@redhat.com>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <4ec9a410-203e-d137-833c-063b7b959f92@windriver.com>
Date: Sun, 24 May 2020 19:42:05 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
In-Reply-To: <7acfcbf8-429c-ca64-b16f-9c8a37a7698e@redhat.com>
Content-Language: en-US
X-ClientProxiedBy: HK2P15301CA0019.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::29) To BY5PR11MB3894.namprd11.prod.outlook.com
 (2603:10b6:a03:18c::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.155.99] (60.247.85.82) by
 HK2P15301CA0019.APCP153.PROD.OUTLOOK.COM (2603:1096:202:1::29) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3066.2 via Frontend Transport; Sun, 24 May 2020 11:57:24 +0000
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 02d92d0a-0f0f-480a-5d35-08d7ffd9a080
X-MS-TrafficTypeDiagnostic: BY5PR11MB4006:
X-Microsoft-Antispam-PRVS: <BY5PR11MB400687C139DB76546E52490E84B20@BY5PR11MB4006.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0413C9F1ED
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hSJXblfuo/lld8s2O0kNq9C9uhZuGHlEyCgRYVZj+yAsLIk74i6iqaiQWjkm0LjUfXeerFMzKX1rGxWzs+kZDuz/ax0LttGwSX1nII2AAN2bCgmIJFvYCEYeB/gHMfZm1ubfRu0U6t5Ne1cnrVIeAJb+8b4FawzBq/hVj6hybGC0xJxcGN/mJw8GxCn5Xtx7d1xav5eKDc0JJeNT+1cLrM8GrATZuJ1WNywp4aivEYD9mW3DEqX95DEgveQ+Gesw+GyUhr4o3aMJAS5ZZZv/EI//nD8zJE7+WjSNYFwdI4sXg3ynfeT2ys3VBQtLDPG68oX0U0VMNVlz8gEl+lTh8v1lavauRGkB4jIPr4usPEON9A6OKDfCBkoxoybkbv9MZGPfAV79G0cMiaJmiEpw9mMsTWHZF9woXbpUuZYTTc+P6fRac+wjkY3uwFFxW1UwOTuNmVQYi7sma3HEEu7mqKdu29b6BYgjTPcu+Q2xttMnYMculpLfmiYQi3ANuXl86+L3WOyKlRP+KlmXIwexeQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(376002)(39830400003)(346002)(396003)(136003)(4326008)(54906003)(6666004)(110136005)(8676002)(4744005)(16576012)(956004)(2616005)(6486002)(316002)(5660300002)(31686004)(31696002)(44832011)(86362001)(8936002)(2906002)(478600001)(966005)(36756003)(186003)(26005)(16526019)(66946007)(66476007)(66556008)(52116002)(6706004)(53546011)(78286006)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: zBcw4nN4bKgj+3QmneOcjzCfnVrwYFRKWP3MaLtU4CmNyOZCwRWShALwUmZuTQKP3Xnn0TJRjGUXrX2pmstwEHm7hUhVU4X2PRJljqeDpR9kLowvTvxwOLMRwPw0r2GjIS//M9KxYPYhHVwyV26hJMpGKWd9aKSB9HJlKlxE4exNSAXoRndevTI+0rA/oRjbRje27FV/+d8Ssa/iIjf84v9v83K/fayLRe+LO4MFzMWjIwShCjMTxOcO6XImSjNuIG5tOHMt0ZatxRuQ5Wo5KeWmRJ5EKdKfONyrJgYlLSPEFNzoba3YNy7kB9s8zt9f8WMsp3r14CX5BV0Jh6+82uWAOKC1kd9NKWPwUyws8Z5jqHrLIFG0Kqekm3HECMNytYsypLf+53dbTtnSVf1U6f60lpyZdscAAPfd1lIOQypvJiF4/IQeZMHvwhWWWTnrohn4LboMrjZjf7j9oUXoF3fNtHMjuG6X/4Y6nryo8nE=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02d92d0a-0f0f-480a-5d35-08d7ffd9a080
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2020 11:57:26.6145 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fabFAXcClZ05cbDhp6IapneuuQ6MsxDb4UcmHpILrfRvbF3Kqx/9GActqRyRloeFoKE65O1Rktf0/zT5r4Zcdw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4006
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.75.42 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.75.42 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1jcpnK-006ygY-F4
Subject: Re: [tipc-discussion] [RFC PATCH] tipc: define TIPC version 3
 address types
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
Cc: "xinl@redhat.com" <xinl@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On 5/21/20 11:03 PM, Jon Maloy wrote:
> https://github.com/willemt/raft.git, that was only 3,500 lines of code, 
> although with uncertain quality status of course.
> I suspect that a large part of those is code that are dealing with 
> neighbor monitoring, failure detection etc, i.e, services that the 
> topology server already has for free. It would be very interesting to 
> see if it would be possible to reduce this code amount to an acceptable 
> volume for inclusion in the TIPC module.

Good finding Jon! Let me try to study this one.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
