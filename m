Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 404A22B8B1E
	for <lists+tipc-discussion@lfdr.de>; Thu, 19 Nov 2020 06:51:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kfcqk-0004EE-4P; Thu, 19 Nov 2020 05:51:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1kfcqh-0004Dx-47
 for tipc-discussion@lists.sourceforge.net; Thu, 19 Nov 2020 05:51:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TMzLZryiAOUOjHWeHIdMIY+mBFTj1NMFW015xiZSHJM=; b=TGfONXbPOPMNfRKq9+eqsw6r/l
 7+SYYWPqevImatUgE2LnLRMzjNlA4AfSoXEhDe8DOV+hDtCUxXHdNG8+2ou79fUNIOTmOsKPey3UG
 dpj60v7hQYTujbZfx9+v/0IDRo6TvfceC5KXZ9qbw7GwrQFBnvoD7z0zJgDpVtF9aT2U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TMzLZryiAOUOjHWeHIdMIY+mBFTj1NMFW015xiZSHJM=; b=R8fpicKNRim+2PE78uS6n6MJpr
 d3l5Pyu3BTcCeeBer7uFWrnj0w0evkJTjITLOIEfpX+G5liWfULMWQrj7+34ai+kZFC+H0LI9HmtR
 PEUpFSM9OtjDPNbtJiDdgMY0rqnDd3/uPBtZOC9oF5ZxMlLKejfkaCUk2KlqNQfsuNMc=;
Received: from mail-mw2nam12on2077.outbound.protection.outlook.com
 ([40.107.244.77] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kfcqU-0066XW-PG
 for tipc-discussion@lists.sourceforge.net; Thu, 19 Nov 2020 05:51:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R20zldmvt8fW+LiIR+z4jZX5vuSFJX2VKDqgqF7799LtJOrFErYfCAS9TJ/V5WDSaHOcMJYFihiAj6OqtJbSEmNEFscZekeQC2e231f4esMPeoDu/FNH0tZD1EBpkXTf/hypz5OQUsjS2pKiENJBF7Q9eYpIo4cKJbGwYpyxKaLGJ4EBMFLkt0UGf4gHyAuIPYKNqrdyXvRRRde8wK6G1h5zzVg9EZuxtfXVez8YyKTyWAQYGyUcbMUGMmcJdjBz9h5VImp+arjl9H/XGyaMa6Q4L5JrWosz/aaj0FVcVzBIOI7A68ymp8x3tdWkUKud8avXjZskVhrmvgp16Ors3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TMzLZryiAOUOjHWeHIdMIY+mBFTj1NMFW015xiZSHJM=;
 b=IlIrKM6qw3OrdHJpN25kSwPfW229tHOUH4IkjaFmdqi2dF6QwhdIkjxvrawhZEtsll+j6HYtp6DA/gDttZv7DQLLeW5BiNiDojtV/DcKzX2HYCf9LWHV7m7wZp21xOOPhnIpW1o8Ft2XWIegN7Q1pYjjaJ0FWO6nPG6ELO9Kl1Ed757nXAH6Y4J9LMGou58uQeLu0UyI6LIiZPaj2zBzsRE57gwapZjoNYWmvciXIay+/jqBWrl2trgh5OP1dj6Kt0aZyKC57iw4fxxAG/LyYMwosA+xZaIgsWq7Ah5iZkun2oyn9tJKpIADxQznYgqYJG/V57WZqs8wtPBLbw/BIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TMzLZryiAOUOjHWeHIdMIY+mBFTj1NMFW015xiZSHJM=;
 b=C/Y/wO9QzHit4keNmam79aTJjBuKLUeYD+zXc3aB1sa3ZwhnK204F2UmSeWo2P0qNV6g8YFk0ujsYfQYK/HFFigN37z4nwsbir65WFDfM/QGZunB/HBDtvsUfdR56Qdu17uGAch/OI6otNyf4lUUqHaUEI4wuLBAXJd0Sg6uUWk=
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=windriver.com;
Received: from BN7PR11MB2596.namprd11.prod.outlook.com (2603:10b6:406:b2::20)
 by BN6PR11MB3891.namprd11.prod.outlook.com (2603:10b6:405:77::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3564.28; Thu, 19 Nov
 2020 05:50:53 +0000
Received: from BN7PR11MB2596.namprd11.prod.outlook.com
 ([fe80::5c92:e7ea:ba54:333f]) by BN7PR11MB2596.namprd11.prod.outlook.com
 ([fe80::5c92:e7ea:ba54:333f%3]) with mapi id 15.20.3564.032; Thu, 19 Nov 2020
 05:50:53 +0000
To: jmaloy@redhat.com, tipc-discussion@lists.sourceforge.net
References: <20201112012640.525346-1-jmaloy@redhat.com>
From: Ying Xue <ying.xue@windriver.com>
Autocrypt: addr=ying.xue@windriver.com; keydata=
 xjMEX1nnURYJKwYBBAHaRw8BAQdAZxROH3r87AOhslT5tP2cdYcg89+pbHiYf+LIny/C0fLN
 GDx5aW5nLnh1ZUB3aW5kcml2ZXIuY29tPsJ3BBAWCgAfBQJfWedRBgsJBwgDAgQVCAoCAxYC
 AQIZAQIbAwIeAQAKCRC3Qmz/Z9beRSLiAP9kPgF+mG4F3elbrVTen/sybJfZidnvF1YVq5Ho
 sUbt+wEA6ByAVvGqlEbt4SE1JP6xVgTzwlwihyCgl/byRAQzeg7OOARfWedREgorBgEEAZdV
 AQUBAQdAsdHm3QQyX4RnhnVEmywHpipu0cUyHWeuAkYuLavc5QYDAQgHwmEEGBYIAAkFAl9Z
 51ECGwwACgkQt0Js/2fW3kXZKAEA0jTzhaLbmprQxi1BbUmAYtlpQCrrjCWdpFGwt5O3yO8A
 /jVE1VxnEgu71mYXX1QE1Lngk+SPVEfLm0BVZFk9fBAA
Message-ID: <ace087fa-447e-04ef-c7c0-b999d140d851@windriver.com>
Date: Thu, 19 Nov 2020 13:50:45 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <20201112012640.525346-1-jmaloy@redhat.com>
Content-Language: en-US
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: YTBPR01CA0019.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:14::32) To BN7PR11MB2596.namprd11.prod.outlook.com
 (2603:10b6:406:b2::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.155.152] (60.247.85.82) by
 YTBPR01CA0019.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:14::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3589.20 via Frontend Transport; Thu, 19 Nov 2020 05:50:49 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d1e763d9-4a6e-4722-64de-08d88c4f130c
X-MS-TrafficTypeDiagnostic: BN6PR11MB3891:
X-Microsoft-Antispam-PRVS: <BN6PR11MB389137389B62E61741FC53E384E00@BN6PR11MB3891.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1002;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5XHmvzjJ3FRVhidmIqqviexKRH+VQjzpELRh2XRrjfkkxafmLssJFiShZx0Jl9gdwPjaA3f/8rC+nrJR9fAS/Fzr5Czwp0dSEl6zMlC28KU5YHRdSDsVyaPoXCjLg3RGaHMV0Fyos9lAaNP6OsmVJjTexFQ2Cn2CNhto9A0nG2kgyuANWzTWBhVcwVrYCiw6l1z/IPeXd7lvdY1GIGn0NAeEdzbu2KtkucOlNgcwsue840sj6slDWjUvQXfOQTqbaPa5QJwyCg7aJmz5IPe0pyc0IfgG6lfmIwOSE69jpnhwaPdf3n/nrusVPB2/6i/R/RROdM9AMQsmZFwnR4+jmaqiPNoUGFxgVnyvsYHUWbo7N+PCOzsFtRZv6SYZkfQJ6KQM/MUO2Ze+QyxL1h5dUw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN7PR11MB2596.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39850400004)(376002)(136003)(366004)(396003)(346002)(5660300002)(8676002)(66946007)(31696002)(6666004)(52116002)(16526019)(26005)(44832011)(956004)(2906002)(86362001)(6706004)(2616005)(66556008)(31686004)(53546011)(36756003)(66476007)(4744005)(16576012)(6486002)(4326008)(186003)(8936002)(83380400001)(478600001)(316002)(78286007)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: xq7TwhMpERVIwdUjyD9cfC2ihQ8tnK6re+ibtyEicV12DI1IAWO/CMiwSecc4jrqF4jkJZXYMb6sjvbz8bLrt9GsN+MHApbvyBGjMyDJblhoCrFBcQGVLFy7H9fF+cXfIg/fNLZcE3p/RMmffK5+gINlAF4Pi7EdxqBWwIdV15VZFxyAs2FtgzOk+yOJdTVkPbTe0cFb3mMMznDE9aqlG6JJgmwipHFZy0jQR89TIdlEMYQrxk5uQVx53JJKhTyKoJ/GA2IGfry5Sabwk2oQrZFDBtEedqtzvp5AJwZRY/mBA22t2RUm4fddX6+ucNjSsnmljBFIR/kJKXBGIbJHLXVr8YjkZbezLZjXPMz7GGXtF0xVvOy2vwEMgL4luadbuGPgFJA0UaD1wnAqP+OGZyTYNbIFy007kvOeleIXygZKBK///GF1oFoqVMv9MxJV0vEngdizvm5g25tFrrEutBa/oD6wO7jSqt9sRuS2fdhNW2CPBtonKyprCQu8S6uR0AAJTE4PNBRU5/SkaApxSGa7QDUzyCE2/Wg8xjG2MKPlbbCDcOMkyK6qP1Em9PWLnfJT6joKmOxA5DffxXoLTnerfLZB14Iik086sx0ZYq9WTJldajLzPT2sPIAK4UoGB94ohIwUDdtiWNOkqq2aTQ==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1e763d9-4a6e-4722-64de-08d88c4f130c
X-MS-Exchange-CrossTenant-AuthSource: BN7PR11MB2596.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2020 05:50:52.9085 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M1OcVCLnxPhE7Z74Q/zLotkjJT31loT6Pd+mUuKb3kVidcpm88HacXxSfj7wTL+MIndYStVyLrQrmRMFn46iRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB3891
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.244.77 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.244.77 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kfcqU-0066XW-PG
Subject: Re: [tipc-discussion] [net-next 0/3] tipc: some minor improvements
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
Cc: xinl@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 11/12/20 9:26 AM, jmaloy@redhat.com wrote:
> From: Jon Maloy <jmaloy@redhat.com>
> 
> We add some improvements that will be useful in future commits.
> 

Acked-by: Ying Xue <ying.xue@windriver.com>

> Jon Maloy (3):
>   tipc: refactor tipc_sk_bind() function
>   tipc: make node number calculation reproducible
>   tipc: update address terminology in code
> 
>  net/tipc/addr.c       |   7 ++-
>  net/tipc/addr.h       |   1 +
>  net/tipc/core.h       |  14 ++++++
>  net/tipc/group.c      |   3 +-
>  net/tipc/group.h      |   3 +-
>  net/tipc/name_table.c |  11 +++--
>  net/tipc/net.c        |   2 +-
>  net/tipc/socket.c     | 110 ++++++++++++++++++++----------------------
>  net/tipc/subscr.c     |   5 +-
>  net/tipc/subscr.h     |   5 +-
>  net/tipc/topsrv.c     |   4 +-
>  11 files changed, 89 insertions(+), 76 deletions(-)
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
