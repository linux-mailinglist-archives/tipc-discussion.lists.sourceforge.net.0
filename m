Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 349F02F4C1B
	for <lists+tipc-discussion@lfdr.de>; Wed, 13 Jan 2021 14:17:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kzg1i-0005YL-Q4; Wed, 13 Jan 2021 13:17:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1kzg1h-0005YD-H9
 for tipc-discussion@lists.sourceforge.net; Wed, 13 Jan 2021 13:17:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LH52c7CFjs3QN5JWPgvxZcdyQyC392pIGJmKrPymIg0=; b=VQWvDNMimkdNxkGDIyg5gJrD1E
 yzWixUFd3q2cttDQWYhRZRJ1opt2VbNcMClEmWk6o5NcO9LfvP97LTT01Ge+MgowRw4RBWnRY0XeV
 3kQ4sQapuA7adz3g3f1h1hwLI6uWMWkPxlBd2K3e8GRC5dus6H15iUPbfR5+ga7/DiXE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LH52c7CFjs3QN5JWPgvxZcdyQyC392pIGJmKrPymIg0=; b=JSVFR7HO0DhmfRnVtLuej0LYXa
 LmpcJ3tCozVDr+WXx/yXTx33oKR0QU+4ZR7euyqTo61kgV0oawNqX6hGPOzTxqmq0uZgGcR16nU5U
 uk2u0AbkPaqytOfgAEnaGDK7HVnRds8JkADDk73ozMm6M6zptTdJfZVytmr/Dy0TE5xk=;
Received: from mail-mw2nam12on2058.outbound.protection.outlook.com
 ([40.107.244.58] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kzg1Y-008vx7-CS
 for tipc-discussion@lists.sourceforge.net; Wed, 13 Jan 2021 13:17:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PMWcrqOcVb5/Q+OBUmuFYBZF7J/GGkmln2HWWFhNfei2lLr2U9HpvoB7O6AbKzPFWVhN8txhDypG+K1II6vSFB9zhC6Zh2XS1T+lOB1Y9/1GhiX3xH5R4kBKoQHpB/eDLTUfOY1IypiKjWom0vYQcQOccRslIpBBSDYrxtI6rGxHwiMoDde3gqr5ygIWXap0/T1mplprEKnBYZJCv4L/cngZdNsohzmnjwdKqwq8gBns0cu9zx4vE5zwveJ39wc7vbnNU1e/VU6M0ALJ5L2ZSSM0xPdYwVZ5ZMfsKo5bWP40AqNbzctfK46zMLG79DzhrlP0LPoboRGHsTn3RmW4HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LH52c7CFjs3QN5JWPgvxZcdyQyC392pIGJmKrPymIg0=;
 b=FGCBosIwhtF9G4ICBzX/KdVSnkhSwY0BbaTZZNwn0lbTOUCyH92DZXMx4fEwU0kXVsCZBjF9KtcbKSzzSS2om3xwd8VFxUOB/4cBr+oUXBXTEOiXVMyBrZUE7DXVx+kSyjvl1WYQAsj6AV6iJ8a7AJ6+sCi5whsmRC9WcSqPeulQq6ec9oRwN0JiQ9IjGyHY346zO8h+FGgCNSYEjBv5qVhh8FWP7REaeAO0YLJ01boAXx+qRs2Bng6jfiHCARjZTWVzbkCGAfHv+ZroOVaa94Z+XuDxX2ahPifJNrHmT7GjTxrf67gssNm7daxhpScVMkuxq+65tyeek729CPmuKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LH52c7CFjs3QN5JWPgvxZcdyQyC392pIGJmKrPymIg0=;
 b=FG+ruVMGXw4MIr/ciG+2Xb70mlToI7leNiyR7/G/5zStR0W+hpSs7v8SG6wI6VtwC4AGdEzFUYu5m5xRH+7Gw56S5l2AYvCszOW9TPTU6qwVNopqUIUsV9Dm85jEUuUS6XSjID8QrgvsjxQBDk4xtozEsF5G18oR6P0Itn4TRVQ=
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=windriver.com;
Received: from DM6PR11MB3964.namprd11.prod.outlook.com (2603:10b6:5:19c::28)
 by DM6PR11MB4754.namprd11.prod.outlook.com (2603:10b6:5:2ad::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Wed, 13 Jan
 2021 13:02:14 +0000
Received: from DM6PR11MB3964.namprd11.prod.outlook.com
 ([fe80::584e:b857:3878:d128]) by DM6PR11MB3964.namprd11.prod.outlook.com
 ([fe80::584e:b857:3878:d128%3]) with mapi id 15.20.3742.012; Wed, 13 Jan 2021
 13:02:14 +0000
To: jmaloy@redhat.com, tipc-discussion@lists.sourceforge.net
References: <20201208185012.265508-1-jmaloy@redhat.com>
From: Ying Xue <ying.xue@windriver.com>
Autocrypt: addr=ying.xue@windriver.com; keydata=
 xjMEX1nnURYJKwYBBAHaRw8BAQdAZxROH3r87AOhslT5tP2cdYcg89+pbHiYf+LIny/C0fLN
 GDx5aW5nLnh1ZUB3aW5kcml2ZXIuY29tPsJ3BBAWCgAfBQJfWedRBgsJBwgDAgQVCAoCAxYC
 AQIZAQIbAwIeAQAKCRC3Qmz/Z9beRSLiAP9kPgF+mG4F3elbrVTen/sybJfZidnvF1YVq5Ho
 sUbt+wEA6ByAVvGqlEbt4SE1JP6xVgTzwlwihyCgl/byRAQzeg7OOARfWedREgorBgEEAZdV
 AQUBAQdAsdHm3QQyX4RnhnVEmywHpipu0cUyHWeuAkYuLavc5QYDAQgHwmEEGBYIAAkFAl9Z
 51ECGwwACgkQt0Js/2fW3kXZKAEA0jTzhaLbmprQxi1BbUmAYtlpQCrrjCWdpFGwt5O3yO8A
 /jVE1VxnEgu71mYXX1QE1Lngk+SPVEfLm0BVZFk9fBAA
Message-ID: <1be796f8-818b-47ff-7272-4a86d2e46a77@windriver.com>
Date: Wed, 13 Jan 2021 21:01:46 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <20201208185012.265508-1-jmaloy@redhat.com>
Content-Language: en-US
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: BY5PR03CA0020.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::30) To DM6PR11MB3964.namprd11.prod.outlook.com
 (2603:10b6:5:19c::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.155.152] (60.247.85.82) by
 BY5PR03CA0020.namprd03.prod.outlook.com (2603:10b6:a03:1e0::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.10 via Frontend
 Transport; Wed, 13 Jan 2021 13:02:11 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ddc7b33b-577d-4459-69ca-08d8b7c37297
X-MS-TrafficTypeDiagnostic: DM6PR11MB4754:
X-Microsoft-Antispam-PRVS: <DM6PR11MB47549227F4D2D574D53A918D84A90@DM6PR11MB4754.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sVl0GlU4XG3KOpksJ3cYyA2NYf2hntmwA+q8ZDnZkG4vKf0zyXFzEUfseQ4cs/OasOlpzzT8Q+1oRZWhgHYOcT31NGPxlVnl/ixnRBhkLCj7grwPX3lRi37no5s0+zBQwKzleDWzvngOMvq3/GfAkFQO3uO02tGqvpUIUIMuGoAD3i/F18F2rLwdDYfLVPaUKJEzptY6iNn1ofMo6ogcb2MkW6csxnRVPCeScudIaMdryh3BPsUDhJ1L4djXbcVXtwBgXYGwTIuVSwvBs3PQToaNcN3FU8kDqjzm9WWshga2VlRGVhh8fkSrmToSRMqb1EjhMV0xy0g7Tn9n9x4O5Y+bBFvJbFtMKBXd2bk3+cPK0Ai1BntLstmwo2VpnoxO2BPgZfHC97zdL+zZ2yk/w1FkYMG9A/St9lHYt5D1CGcIMHCuAXfI/doNQyj9WO417Gn9hTPK/bO0/t6Ljof2+Mp7gfxyu7Go7Ug/d4RxD55aqE/OTLbQxnysI1H4M2q/
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3964.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39850400004)(366004)(136003)(376002)(346002)(8676002)(956004)(5660300002)(31686004)(16526019)(31696002)(6486002)(2906002)(8936002)(16576012)(66946007)(186003)(6706004)(26005)(66476007)(316002)(53546011)(4326008)(44832011)(2616005)(52116002)(86362001)(83380400001)(478600001)(6666004)(66556008)(36756003)(78286007)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?enM4c002YkJocSswTmJsNWdoQ1dyL1Yyb0l0OUNnb1dBaFVYNDhqS3ZLQm0z?=
 =?utf-8?B?N1l5OW9lVlhORmZXRVJpQmhZRVBic3piZmNZK3RLREg3aGdNRHF4MzduWWQ5?=
 =?utf-8?B?S3FlcDFZV2dzaXJFYytlcXBmMEo0NUdIaTNrMjZPQ25kOHY4YzhoMzZMN2tt?=
 =?utf-8?B?aVFzYlgzRmw5UG1WdHF2YjZMR2krSGhUY3BxWjI3bndSZ0dmOWVUY3B1SU44?=
 =?utf-8?B?RDByanZuVjNuZmJjKzFENTNLZVUxN2NxTTZycFRZQnZrdjhicmQ5MXhiYnR5?=
 =?utf-8?B?SmQ5ZzZwQ1lQYVdRejRzWHZJTXc3TG84bzJjYXNzeHc2VUFLWURFZnh3N3lp?=
 =?utf-8?B?dGRKaGUveG1lTmpSTElpZ2lJUGRQWnhTTFNhZ0ttM1VJclBwQmtMZFR4K21P?=
 =?utf-8?B?YU40Z1cxVGtaNTVSN3Y3ekNTQUw1Y0l6WjBKQ21oUGo5dmVhSnBOVU1pVnpR?=
 =?utf-8?B?b0c2SEhDamV4RWNwSzh6c0lyY3hVME9HMExVOWJreUlGYXRMeXpDV1ozUXlk?=
 =?utf-8?B?VFlCelFidEpyUjF2UE84anlZU2pZQTFmM1AvYmlhcFAvMnNZWjFCakQwMTV0?=
 =?utf-8?B?bTBpT0hHWjhka0o5NXZRYkg3VlhwQUxJU0VqNWZpeFNQMjdNd3dvQXN4eitx?=
 =?utf-8?B?VTRPeEhZVGYyaVZzNFA5aGFWWTdmNlorNHVFMWFwRi9EQ2g0SGk1QUk4N3k1?=
 =?utf-8?B?d3FrOElZKzF2SmsrdXY1TnNaaXBpQVJYTUFyaEZ1em9XU2dONGtRMGdJVFpn?=
 =?utf-8?B?U3lxcjBrdmF0MVR2NzB4SUZGa2tRZmdHaUhZL0xrTUtVWDk4ajNkMDgxa2dk?=
 =?utf-8?B?WTdObnZNNXo3N3VveDM4a3lDMm5SRytKQ1BrdVFoVWErb3FHa2VNcDRzUFJX?=
 =?utf-8?B?UFFEdGQrUHlucFYvSmtLYVQ0akF1TlZZNWY4OU9JYUpuZzhTVzBQY1hlM2l2?=
 =?utf-8?B?VUpIQ0JiRlcyTzNSM0Uxay9LVDNaUXNLV1A5RmJHbFdhOVBGaXRObDd2c0Z4?=
 =?utf-8?B?ZGlMbjJzTFhTYXhQa0F6TWs3S3pTbjJDSm53U014SE1aMVVGOEpDTEJzSnBx?=
 =?utf-8?B?MGVKWHhIb0pobGFFUkRCc0tuaHgrcG4zTWprUEN2TnJUSlBhdHI5ck9nbWht?=
 =?utf-8?B?cDhjcE1iYkJJbC9rZ3dCbFFOVTZXZm1VcVVZSFNHajFkSmZpMFkzSURuZlVS?=
 =?utf-8?B?VXZkeXFxQ0Q0WXhnYWlkVkkyamVFblg3REluVkxuMkxYL0U2MWdQejZxRFdh?=
 =?utf-8?B?eXlySUJLUVFPRDRTSVVqWUY1YUI2Vkt0dXJrR2pScm9ZV3E2R2NaODNCNXpG?=
 =?utf-8?Q?DYHyDqNSz2IED8qC2QTP9SIpJmV97wswJG?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3964.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2021 13:02:14.0597 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: ddc7b33b-577d-4459-69ca-08d8b7c37297
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f405D5xN/yUJP3ifADgY2W0aKSa6ONcWoZnzB2THLpuHeUDU2d/Ylp19X+n3dL9YJgw+qU3JUf6OxsaequxA4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4754
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.244.58 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.244.58 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kzg1Y-008vx7-CS
Subject: Re: [tipc-discussion] [net-next 00/16] tipc: cleanups and
 simplifications
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

Thank you for your patience Jon!

This series looks good to me.

Acked-by: Ying Xue <ying.xue@windriver.com>

On 12/9/20 2:49 AM, jmaloy@redhat.com wrote:
> From: Jon Maloy <jmaloy@redhat.com>
> 
> We make a number of simplifications and cleanups, especially to call signatures
> in the binding table. This makes the code easier to understand and serves as a
> preparation for an upcoming functional addition.
> 
> Jon Maloy (16):
>   tipc: re-organize members of struct publication
>   tipc: move creation of publication item one level up in call chain
>   tipc: introduce new unified address type for internal use
>   tipc: simplify signature of tipc_namtbl_publish()
>   tipc: simplify call signatures for publication creation
>   tipc: simplify signature of tipc_nametbl_withdraw() functions
>   tipc: rename binding table lookup functions
>   tipc: refactor tipc_sendmsg() and tipc_lookup_anycast()
>   tipc: simplify signature of tipc_namtbl_lookup_mcast_sockets()
>   tipc: simplify signature of tipc_nametbl_lookup_mcast_nodes()
>   tipc: simplify signature of tipc_nametbl_lookup_group()
>   tipc: simplify signature of tipc_service_find_range()
>   tipc: simplify signature of tipc_find_service()
>   tipc: simplify api between binding table and topology server
>   tipc: add host-endian copy of user subscription to struct
>     tipc_subscription
>   tipc: remove some unnecessary warnings
> 
>  net/tipc/addr.h       |  44 +++++
>  net/tipc/msg.c        |  23 ++-
>  net/tipc/name_distr.c |  89 +++++----
>  net/tipc/name_table.c | 419 ++++++++++++++++++++++--------------------
>  net/tipc/name_table.h |  64 ++++---
>  net/tipc/net.c        |   8 +-
>  net/tipc/node.c       |  28 +--
>  net/tipc/socket.c     | 313 +++++++++++++++----------------
>  net/tipc/subscr.c     |  84 +++++----
>  net/tipc/subscr.h     |  12 +-
>  10 files changed, 567 insertions(+), 517 deletions(-)
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
