Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B7368B4CC
	for <lists+tipc-discussion@lfdr.de>; Mon,  6 Feb 2023 05:12:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1pOsr6-0007Vk-7e;
	Mon, 06 Feb 2023 04:11:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1pOsr4-0007Vc-Q1
 for tipc-discussion@lists.sourceforge.net;
 Mon, 06 Feb 2023 04:11:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GH4kn/7vp58gWm/JwR0vR2VdUJ9xuYTl7F91s911bXE=; b=E2/dlHI8jxpkDqthYCvzn8wx5Z
 I+5fdjuuz/zFrKJ1uF3OQR9WN587DRmfQdkHtXE2G4t0foid1nAH8em0Oxnx8QwaFxCHMSg0wFgIX
 j1WuazCJAn+TfFqXSDqgVQOPETgB3+o3X1DAEDO0DNji5ss/mcazd4TLQOtE3VvyiDfk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GH4kn/7vp58gWm/JwR0vR2VdUJ9xuYTl7F91s911bXE=; b=PTKiNnfx6XGGz5GlRMoLFJHpIN
 m+9KXN5wDPwBSUIH+TWtfQLEZsHj2/+Yu5y5fZsmulxrYIQ4GmD77nITx8mOtgjyR5jtMb+EXvGUk
 adwNd5r65D6JPXfZEoS5ImwJhEqet4dKrMdGeq8XNfO+/85QZzKJVrLhmSSmUnUtbezg=;
Received: from mail-vi1eur05on2105.outbound.protection.outlook.com
 ([40.107.21.105] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pOsqu-0006OV-UB for tipc-discussion@lists.sourceforge.net;
 Mon, 06 Feb 2023 04:11:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZnjMo4Gu54W1oPrzUxiJ4kuE1fcBflIF5zbFkiXEaRvXjdzPpWpmwJJD5tglQfF5ehgwsSfGO/KKsnkNO0Dp7rk56Mr3YauLch3flaa/HZBCiq+j7FuTR9TOcMfa5/gflIXDOJC6Vvh/wKEXr+Yp8vOaiKYWdCabML0jZNxcZU8F8Slpq50lOO6Dnsq/z0OaQ8Gonbi6k3rJd97MwdP49IHtobt+/v53ivIYSkg8Sz9ombk+aIOjoTpBnu739BU79S9CO/8HgGHL3/xFzIVvCw8oUF1SE2yPPnVruhQCLNHT9ZgA5ZMLxxdngKvdVtefXFPjdddZo4B/bKwLDyOTeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GH4kn/7vp58gWm/JwR0vR2VdUJ9xuYTl7F91s911bXE=;
 b=cgXVYIRiMBxlUNSs5OcJA94vlqsNaSF8/oiXex+E29W1I4/8uFi/o6qGShyEZJps7gZcgJmWrr95Gvs8AZgRaiTvUqrf0rPjLWWRvN6xZSEu9qLMPluoT3gCx/hZjO6l/QlmM7sv8LDo24EvcZA2yN9OqNPIcbtzmmrxnQl19f8A87mqvas9tyEO7hP2+ecybsXWL/ArnIgJX+dBEQn2wuzrORl7mv7A0w6ozSCZ0BjNWx3XvZ+RW1ExxD550vQSXNfi5wSaIIA4NLJMpY/4lQzUirxb8I3wNp2dbFwtXhqeTcqTqYMWJINW/RUD5XgzC96mdythA6aKsNd6kPMZ0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GH4kn/7vp58gWm/JwR0vR2VdUJ9xuYTl7F91s911bXE=;
 b=Fr7A09wLsRp2B+SlBSPAgupYpU+5DNImHLPkwr9jFAkv6I58wXd3jrLyisGi2plkOpaTkt6cjpSRrsPsxE9npTYIn3QC+WSG6hP4+JhH96MFiXFQZP8QChpVdhfnk+KCmR6UVh1uuDpM1/lyyAfc3Lgd6Z/vtFcRAFBA6UXBIXI=
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com (2603:10a6:10:36a::7)
 by GV2PR05MB10596.eurprd05.prod.outlook.com (2603:10a6:150:e2::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.32; Mon, 6 Feb
 2023 04:11:24 +0000
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::6540:d504:91f2:af4]) by DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::6540:d504:91f2:af4%3]) with mapi id 15.20.6064.028; Mon, 6 Feb 2023
 04:11:24 +0000
From: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
To: Jon Maloy <jmaloy@redhat.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "ying.xue@windriver.com" <ying.xue@windriver.com>
Thread-Topic: [tipc-discussion][PATCH v1 1/1] tipc: fix kernel warning when
 sending SYN message
Thread-Index: AQHZNfI8eAvd9s7ttEyzUiYb/3awmq69h12AgAPMSuA=
Date: Mon, 6 Feb 2023 04:11:24 +0000
Message-ID: <DB9PR05MB907877FD5602A1D6A493336B88DA9@DB9PR05MB9078.eurprd05.prod.outlook.com>
References: <20230201040352.194367-1-tung.q.nguyen@dektech.com.au>
 <331eb438-e693-ed59-38f9-ac22673a5056@redhat.com>
In-Reply-To: <331eb438-e693-ed59-38f9-ac22673a5056@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB9PR05MB9078:EE_|GV2PR05MB10596:EE_
x-ms-office365-filtering-correlation-id: 5fa5e233-48a5-414a-ebc3-08db07f83643
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vs6i+HND6YAGKewkieU4tH0eigf3k9ootpzYxJS/i8sC1Ie3uBnUwzmTDIGmWPNyUj3Aa4YHAJo2NWesSe7xpWF4JECLFUBeVJvaYKCRebBjNhAkucRI92M2epCqyLkuHZJmUuZ7T4baVVn4wrPyPMFD/Nv5De00htAdPPVgzr6Tudr97Fxkf9ftNdCa5dp5MJz8wlN4I5Dd9A+/7iLhidCELBgZR48YxDwE1tPWHIznUuJgHGTcY6PZjrm1Uhs13TAWA2PgWU2jblVjQCxarlfDAWDi6OrILdE8t5UGZiG0fVz8ujvlwszyU7DX2w6u1Hkjgj4l5LByZnQUnBJuBJJC3oeoK0FLtHwhleU929tL4rH9+0q+3AT90Vp1g9Qz6k1NPIhyCDW3hLiD6myviY7Autcder7jZZDwD2kooZvrxO9IrIWnIF9CIAcZrbj1WJaDgJg6u9j7kZQm1vtUsmpAVnTOtZMQBXN0Mk1bsW+U0BGB/1/X9CIjdv/vCTDxFkSPlwU7cVy+adJ8AON+o444UCJ2v7XWaZ8nRmsPclzDJCfgvEqE4MpQJuw7NvhunLAMgsoD6gx94sYIvWxWJS4fWZqawKMbfoYayJyaKI3/Mzbjaw+WOaGrZXQTumfuQur0eiG8/iMXmEAxePAWUbFHF1Vm71SX4qt+F46HmrjNXKhfEEL9BR7U1ifZ/ouZPZ2lo7TQpH4UeGXr6E7G2w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB9078.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39840400004)(376002)(396003)(136003)(346002)(366004)(451199018)(110136005)(52536014)(316002)(86362001)(71200400001)(33656002)(4001150100001)(478600001)(38100700002)(7696005)(122000001)(186003)(6506007)(9686003)(26005)(38070700005)(5660300002)(15650500001)(2906002)(83380400001)(55016003)(76116006)(66946007)(8936002)(41300700001)(66476007)(66446008)(64756008)(8676002)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QW1ZMllBN2lkeit4enJoK01aK3FiUnR6NjdOclRNeHQ5VVdGYk1pakZlOWhQ?=
 =?utf-8?B?VW1VdnN1a1Nwa3JYaTdQeG95M08zWVNKQ3JiVllMbjFUcjBEbjNSVFBBcWRx?=
 =?utf-8?B?N0xZdlNkQm5mV0hnZEFyTWFldEdsdk9aNFFhcWJ5czVWa1ZPcU5wakZacmg3?=
 =?utf-8?B?M21VYjkxYXQvQUpBTFVPKzFlZmFqSlJTVDhYMzNMRWJzN0xUS1ZpY3J3c1hM?=
 =?utf-8?B?Slk4SHpUNlZadEk0K1dEem1RKysweW5waDZ1YlNRVjErZnhGSDMwM2duc0Va?=
 =?utf-8?B?RllBSmE5YXdaMUEvcTU0Uytja2RUV01DSDlYMVlnbTBPMjNlSUFYMFlpN05P?=
 =?utf-8?B?VWNQQ1NjVm5pdm1YcXNPU3JXbXdxRVlvOGxJZGxXZFNjeGF5M0l4Z1VXMHNj?=
 =?utf-8?B?VlFkbXREZEhYOWFsQ2U2UDR1UXVwRi94bjl1eXZoRVBZOXVxcWtNVUdibzB4?=
 =?utf-8?B?ZlBkdG1nN3VNTUVqT3JzeS9LZW5XWFhPaUh1QlBzM3Q5eFhpNVVtYnFJUGFE?=
 =?utf-8?B?YWF4aC9ydGdFSzBaazhrTnhwVlIzV1NnK0FpV3BVY2cvRzFSQjg5NmxWdC9T?=
 =?utf-8?B?Z1pEWnJDcmJFVC96bisvY0xCZ2NsMSthTkxlRyt5ZHltZHJhMU91aVFldWZt?=
 =?utf-8?B?UXhzU0oyaWYrKzJjNzZRTlRGcjdJS2xndlJ3UzY4dzNSQlk4dmkrOWVnR09B?=
 =?utf-8?B?QzQ1dHFONy9sWEF3MnkwRnlvT1BBNHFFYjZSeHZBdVJOSnd1WUQyQWVKNG82?=
 =?utf-8?B?eU00bEZvZUdVa2FzaUozc2tnWW5yWldsZjZxZzBmYXRBVmR3LzVWRmlMQXFR?=
 =?utf-8?B?U2VBcnlPbkYvUllURzF3V0xmSXBwQjlHeU1CUCtTUmVORy9Xa0tXd1lCZFdT?=
 =?utf-8?B?T3BTYjNNMi9CNU1wRXFxbzFveC9LQ3VqM0E3eUJ5bmJwbVYzR3lzOUlqaFhW?=
 =?utf-8?B?RXRqaHd2S2hpczA4eWpVVDZQZG90QzdSWXBZRXgzcGtENFo3MUZHVmtoaUF1?=
 =?utf-8?B?bVFVNUQrbGtkOWlSeTQrVTJxOG1Dako5UmdWa09iMFplcU9aMktjR1NZUWZG?=
 =?utf-8?B?ZEZVbEdsV3NKUFpiS3N0VlhOVm4yRDVDYTdadmJpRFNGZ2NsY1VwUzNZVktT?=
 =?utf-8?B?U0pQeVlwc1JkbUlDOFcyZitRQWxUMTVkNVVEcGFFdkRudUQrMVdJZ21MVXRO?=
 =?utf-8?B?YW5DNE0zb0VOTk82VkRsbmswQUsxNm5yL0djK1hrVytvaXNweE51YUdGZGIy?=
 =?utf-8?B?ZGFLNGpSZGNhdktJbnRuS2RnR2piSFY5WDB0MzVPelRKY041eTQzeW9GMk1m?=
 =?utf-8?B?aUtxYWs2QW8xVUV0b01WTjNOd0hSQlkwN2VzaFBjb1RlVzBQWnpaY1JJUVVK?=
 =?utf-8?B?YlN6THVlazJXSmVWYS9RbDI4SjFXblZCYUFmdVFQZ3NwbG1YaTczb0hpMXlY?=
 =?utf-8?B?dmZRYStIUzdKN0pWbkJyZmNqV3Nua2JiWnl6MkM3cU9UYnNESEdWZnBJSXMz?=
 =?utf-8?B?a21QdzJPNEhrUmRCZTkyaCt0elZPMmRpK01BT28vRTZJNUpDQ1NHeVYvbHNj?=
 =?utf-8?B?cGdrQUVaMCtUVFdoOHpzWnJIUnlYNE1YQUxnZWZQa2RQZnZvVUN2b0Nrcmdi?=
 =?utf-8?B?QlE2bVh3d3FLOEhiSFhoR0daZC9LWkw2c2ZBcnZjemZiMCtDSjFrZnl1UE9h?=
 =?utf-8?B?eEc4ZVlXSHNhTXJ5Y0NKWkFDUW9xZzNDZWlKd3A2WjdXR2Q0N3kzSGpBU3BY?=
 =?utf-8?B?d2NBS0NMSUVkL3h3LzNxUXd4bGVHTU5ZbGlCMkNub2RjYXJvTi8vdCtxN1Qw?=
 =?utf-8?B?dDJxQWs4YWtiQjVFQzRZSzdWaGdPRGpKVW1EZFNLaWdyMmlsU21YSThucVdk?=
 =?utf-8?B?NGFwaGtCUFFCK2JxS2FpcEZ3WW1yQ2Y2QTQxUHBPSkFRRVQ4bkhBM0RwTjJ4?=
 =?utf-8?B?cWRYTG82aXhXRm1OOXJ3dlhIL0ZBZnozYThNdnNQQ1VNYjBjb2h5bk9PTjBY?=
 =?utf-8?B?cFY2Um12eXUvRkxZNk1wZlVaUzZwa1RDdzlSMW4ra1NxVTNjNmFqejVPQ3Zv?=
 =?utf-8?B?K1JWd1k3K1BrV2NvUWEzTkpvYnY2dmo1Q1RIN2VkZFI4ejc1bUk0WXdIUnRQ?=
 =?utf-8?B?Ym84Nk1tV1BFeWVRRnRDZ1BqSnZRcFVnU1ltaWhBT2NicmxiSGtTT2E5VnlU?=
 =?utf-8?B?SHc9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB9078.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fa5e233-48a5-414a-ebc3-08db07f83643
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2023 04:11:24.6292 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6ntgFrS5hEibDqWmpAVTcsGEGtccK7Gn6QP34Ciudy+tx4ywf/MNnWD6CD9Uqq3Wh/B8e3CU6I/stXA1lieCCLwZsP3dhNGxuG741gb6H1k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR05MB10596
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.105 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.105 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pOsqu-0006OV-UB
Subject: Re: [tipc-discussion] [PATCH v1 1/1] tipc: fix kernel warning when
 sending SYN message
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



>-----Original Message-----
>From: Jon Maloy <jmaloy@redhat.com>
>Sent: Saturday, February 4, 2023 1:02 AM
>To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; tipc-discussion@lists.sourceforge.net; maloy@donjonn.com;
>ying.xue@windriver.com
>Subject: Re: [tipc-discussion][PATCH v1 1/1] tipc: fix kernel warning when sending SYN message
>
>
>
>On 2023-01-31 23:03, Tung Nguyen wrote:
>> When sending a SYN message, this kernel stack trace is observed:
>>
>> ...
>> [   13.396352] RIP: 0010:_copy_from_iter+0xb4/0x550
>> ...
>> [   13.398494] Call Trace:
>> [   13.398630]  <TASK>
>> [   13.398630]  ? __alloc_skb+0xed/0x1a0
>> [   13.398630]  tipc_msg_build+0x12c/0x670 [tipc]
>> [   13.398630]  ? shmem_add_to_page_cache.isra.71+0x151/0x290
>> [   13.398630]  __tipc_sendmsg+0x2d1/0x710 [tipc]
>> [   13.398630]  ? tipc_connect+0x1d9/0x230 [tipc]
>> [   13.398630]  ? __local_bh_enable_ip+0x37/0x80
>> [   13.398630]  tipc_connect+0x1d9/0x230 [tipc]
>> [   13.398630]  ? __sys_connect+0x9f/0xd0
>> [   13.398630]  __sys_connect+0x9f/0xd0
>> [   13.398630]  ? preempt_count_add+0x4d/0xa0
>> [   13.398630]  ? fpregs_assert_state_consistent+0x22/0x50
>> [   13.398630]  __x64_sys_connect+0x16/0x20
>> [   13.398630]  do_syscall_64+0x42/0x90
>> [   13.398630]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
>>
>> It is because commit a41dad905e5a ("iov_iter: saner checks for attempt to copy to/from iterator")
>> has introduced sanity check for copying from/to iov iterator. Lacking
>> of copy direction from the iterator viewpoint would lead to kernel
>> stack trace like above.
>>
>> This commit fixes this issue by initializing the iov iterator with
>> the correct copy direction.
>>
>> Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
>> ---
>>   net/tipc/msg.c | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/net/tipc/msg.c b/net/tipc/msg.c
>> index 5c9fd4791c4b..f40cd9032b62 100644
>> --- a/net/tipc/msg.c
>> +++ b/net/tipc/msg.c
>> @@ -377,10 +377,14 @@ int tipc_msg_build(struct tipc_msg *mhdr, struct msghdr *m, int offset,
>>   	int pktno = 1;
>>   	char *pktpos;
>>   	int pktsz;
>> +	struct iovec iov;
>>   	int rc;
>>
>>   	msg_set_size(mhdr, msz);
>>
>> +	if (!dsz)
>> +		iov_iter_init(&m->msg_iter, ITER_SOURCE, &iov, 0, 0);
>> +
>>   	/* No fragmentation needed? */
>>   	if (likely(msz <= pktmax)) {
>>   		skb = tipc_buf_acquire(msz, GFP_KERNEL);
>
>I feel a little uncomfortable with adding an uninitialized struct iovec
>here.
It is OK not using iovec, just passing NULL to iov_iter_init: iov_iter_init(&m->msg_iter, ITER_SOURCE, NULL, 0, 0).
My intention was to highlight the copy source and no-copy (count = 0) information.
>
>Al Viro had a different proposal in his email from Dec 8th:
>
>On 2022-12-11 04:38, Al Viro wrote:
>> On Thu, Dec 08, 2022 at 08:38:14PM +0100, Eric Dumazet wrote:
>>
>>> Exposes an old bug in tipc ?
>>>
>>> Seems a new check added by Al in :
>>>
>>> Author: Al Viro <viro@zeniv.linux.org.uk>
>>> Date:   Thu Sep 15 20:11:15 2022 -0400
>>>
>>>      iov_iter: saner checks for attempt to copy to/from iterator
>>>
>>>      instead of "don't do it to ITER_PIPE" check for ->data_source being
>>>      false on copying from iterator.  Check for !->data_source for
>>>      copying to iterator, while we are at it.
>>>
>>>      Signed-off-by: Al Viro <viro@zeniv.linux.org.uk>
>> Lovely...  zero-length sendmsg with uninitialized ->msg_data...
>>
>> 	I would probably argue that it's a bug in tipc_connect(),
>> fixed by iov_iter_kvec(&m.msg_iter, ITER_SOURCE, NULL, 0, 0);
>> in there.  Depends - if that kind of uninitialized msg_iter used
>> as zero length source or zero length destination is a frequent pattern,
>> might as well make zero-byte copy_...iter() succeed quietly;
>> I hope it isn't, but that's definitely something I'd missed
>> when doing that series.
>>
>> 	I'll take a look tomorrow^Win the morning, after I get
>> some sleep...
>>
>
>Did you consider that one?
This function has the same effect as the one I used. But from the viewpoint of function
tipc_msg_build(), we mainly want to copy data from user-space. Two exceptions are SYN and ACK- with no data. So, I think using iov_iter_init() makes more sense.
I suggest that we go with what I did (plus passing NULL for iovec) and CC Al Viro to see if the guy has any objection.
What do you think ?
>
>///jon


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
