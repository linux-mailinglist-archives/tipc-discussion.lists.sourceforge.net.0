Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E7AF52B1B79
	for <lists+tipc-discussion@lfdr.de>; Fri, 13 Nov 2020 13:56:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kdYcZ-0001F4-FX; Fri, 13 Nov 2020 12:56:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1kdYcY-0001Ej-7B
 for tipc-discussion@lists.sourceforge.net; Fri, 13 Nov 2020 12:56:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y8+ne+vymEwzYDhwgX+Ev8/c7up+rxAvdLuJULuouwA=; b=M1kLJQV86N3oVjV3xa3lOsEnv9
 TcEDHF+jGGYA/43FEbFIEp3DZDWcevAtUptusE6lzU5nV4uSX7uaU++hfVO8yW12sW2nnHBwNiLgx
 cn+KDZQY/IZNTrX56JecJlAR5C5UzM3p9L6YDtuhh9UETyvGatNhhgTy+7umwarGKYeE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y8+ne+vymEwzYDhwgX+Ev8/c7up+rxAvdLuJULuouwA=; b=jxuV5zrHIx9cz9u1a2VpB43fKZ
 Rl89Gn2KDNyyHXMjYzFaT5zHajGHs6zP+KKko2Df5IS5XxjERXTt1VFIjZeR1UOcSsMLMj+3g1m1S
 oGk8BQhURdlsMlZvh5aJ+0BUcZHbMZNqhc5fbG6Sn/+vtewW6t78Mg6cgexoY8uB79eg=;
Received: from mail-eopbgr770082.outbound.protection.outlook.com
 ([40.107.77.82] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kdYcH-001x96-6y
 for tipc-discussion@lists.sourceforge.net; Fri, 13 Nov 2020 12:56:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KN7ppY7pUgTo28vS1BCEQx0MUcQjO2HqwJbOsTTCDF4/lNTjhEPKseFL64Yy9j5zL9Cam+5Hysgqx5rAIPwR+PRKht6bE7A1e+UZnYWXYtkhtEYK0Xbv5Danm4hIWv/0t38b71smOgPvw5s4D0RtjQPymo8lCsJfxPvE66yhoHyBVXOOX3ZQu8QfTOGTgI50IDkFSi9GyIlxl5nkJBV2K2DHAKO81KeCu+YnYzWTrRTkIKcSvZD+mpkiFA6TbXn2pUPmh8Y4D4+3627x9HISax8mqKxJf8cJggVf+Pr07hZHQgDKBAS2Y3msGVJNqClH1WkYFTgNSyXJORy17c+16Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y8+ne+vymEwzYDhwgX+Ev8/c7up+rxAvdLuJULuouwA=;
 b=MijrCc+Wj2usodnvhp1+uoTCB4CUTvRUtz7hEgWphPmhqCajLWxIGtYID8Aeg2lJUghf8QpxiFYFjItujgM+THfGNPfcOqOSOc0YvVgVgU9tjX8QsyIrCCvCVlQRpV2jG0YvTZx09u/TnRhDFv2/jagrrzGnQmO7f8L8PiGaTKKP4rHDCjcL/HTRxBhXxkpsZ1+LMv6r3OJCZuCOUDjaJJKHaqmqkbeAMMZLf9IpI1n2U7Tmzm2Zl3dLF3fQy+SPGcv5cKk+ZBWVQQj7XYDZLjofDkNNvKkaISZEi8ardrRYZdBVjw0tadW+qybKgtzfrrYN49haPi0Yy/iptTDRuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y8+ne+vymEwzYDhwgX+Ev8/c7up+rxAvdLuJULuouwA=;
 b=JDoueqvfk29tVq8YZExm+4fsnQziyGqLRoRWupKiA9rgVLN0VqdCHjDbG1cNw1Z0oXgUeXXb5L+4wlWzu9gzvxqcWIIIAfpYD+dPPxlueNceXEmx1mwMU4fsihYSa2qpOBFQl9In49ZsaTNzw30mpu9ncNReGXUYjbLg2EjbjR0=
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=windriver.com;
Received: from DM6PR11MB2603.namprd11.prod.outlook.com (2603:10b6:5:c6::21) by
 DM6PR11MB4075.namprd11.prod.outlook.com (2603:10b6:5:198::25) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3541.22; Fri, 13 Nov 2020 12:23:37 +0000
Received: from DM6PR11MB2603.namprd11.prod.outlook.com
 ([fe80::54f7:13ae:91ef:6ae4]) by DM6PR11MB2603.namprd11.prod.outlook.com
 ([fe80::54f7:13ae:91ef:6ae4%5]) with mapi id 15.20.3541.025; Fri, 13 Nov 2020
 12:23:37 +0000
To: jmaloy@redhat.com, tipc-discussion@lists.sourceforge.net
References: <20201112012640.525346-1-jmaloy@redhat.com>
 <20201112012640.525346-3-jmaloy@redhat.com>
From: Ying Xue <ying.xue@windriver.com>
Autocrypt: addr=ying.xue@windriver.com; keydata=
 xjMEX1nnURYJKwYBBAHaRw8BAQdAZxROH3r87AOhslT5tP2cdYcg89+pbHiYf+LIny/C0fLN
 GDx5aW5nLnh1ZUB3aW5kcml2ZXIuY29tPsJ3BBAWCgAfBQJfWedRBgsJBwgDAgQVCAoCAxYC
 AQIZAQIbAwIeAQAKCRC3Qmz/Z9beRSLiAP9kPgF+mG4F3elbrVTen/sybJfZidnvF1YVq5Ho
 sUbt+wEA6ByAVvGqlEbt4SE1JP6xVgTzwlwihyCgl/byRAQzeg7OOARfWedREgorBgEEAZdV
 AQUBAQdAsdHm3QQyX4RnhnVEmywHpipu0cUyHWeuAkYuLavc5QYDAQgHwmEEGBYIAAkFAl9Z
 51ECGwwACgkQt0Js/2fW3kXZKAEA0jTzhaLbmprQxi1BbUmAYtlpQCrrjCWdpFGwt5O3yO8A
 /jVE1VxnEgu71mYXX1QE1Lngk+SPVEfLm0BVZFk9fBAA
Message-ID: <873249ae-fe50-923c-211a-b3c55c31b1f9@windriver.com>
Date: Fri, 13 Nov 2020 20:23:28 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <20201112012640.525346-3-jmaloy@redhat.com>
Content-Language: en-US
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK0PR01CA0055.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::19) To DM6PR11MB2603.namprd11.prod.outlook.com
 (2603:10b6:5:c6::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.155.152] (60.247.85.82) by
 HK0PR01CA0055.apcprd01.prod.exchangelabs.com (2603:1096:203:a6::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3564.25 via Frontend
 Transport; Fri, 13 Nov 2020 12:23:34 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 01cea190-5452-442f-b744-08d887cef202
X-MS-TrafficTypeDiagnostic: DM6PR11MB4075:
X-Microsoft-Antispam-PRVS: <DM6PR11MB407512070CA4190C48385F8C84E60@DM6PR11MB4075.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NYFJpCGixOlOROFXMsrfFxs33jpMf6jn8JC3wEkQ8QrWQF6gqmhtE6ygK4QpwE42U1Jv41LVhbXZh7dVqlPjWB9D3eMbOSkijWz4J5gfmhDIs02nuPUSOd2n7S3P1bzSAe2Uu3Z3wvfnmE+jpc8PnajKzZtKLV84H5ya15tUq3+CBgem6l4Qf122/L9h4GmkOE5UtXoj6cgZZkkm/19lU9fi0zdKI/sPJhQSVpy0yRGiWtVJePclw0vrzSASMq/R8cP3he9L8WHMyZpN0TBl4MrJnGjPpxtPx9Qi44xgOL66JcD/Xd1tkSXbfY8Z8YQ3DrJ1dEu3MxQjJTZZZ0uBy962eDzcFxoQwTVL/14H75l6+wslhOHjJhYeoQtP2yMJnDTgxoQv1wqvwpx+V+CxVw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(39850400004)(346002)(376002)(396003)(366004)(31696002)(53546011)(6666004)(86362001)(44832011)(16526019)(2906002)(26005)(31686004)(4326008)(6486002)(186003)(66946007)(8936002)(16576012)(4744005)(5660300002)(66476007)(2616005)(36756003)(478600001)(956004)(316002)(52116002)(66556008)(6706004)(8676002)(78286007)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: fy+FyOoBxWL4XBw8/6pSLJBNk8Q2iyl3qvwmeIfjoZLCvHiqCOVYqbQl5Z2/vFeBge0t1jQ/KUT39H7thrdg3L+wXF33P+4ftvSTckwJEaCpI02vz5Ev3rIfEU1E53uJdu7Bf1ljBL4fpxCeuLcK8VQGO3Yqpv+cBhR4dXds1hYC+chaMM49/uMv5mykCea8WFTffF+tR3t82dmSBv8UIefrw15muNrS/RHefUp6epb6n8hOcjJkhJD08QxVqf5PFs9hnvryW6vu7iYDzA2jlNpOZJaeCN98PMBhbSi1FaXHW2AxMDuirJhwFtcb3XubWcTaU0sro51+H1E0Gka16qzFxkgrmce0gXbrEwOqlj7v0P0Pd3pd/HE/0wN4Dxla6fPKYPWOrYH5QAPho1NUp/kei+zzLBB9h+Dv3KcRBtw0+fGQqUBIYc7mRNlh8BDcBvXoyxQtYl8mb95G9TyuAJHj9JQ8+M7fMQZXsClMEyB3/NtuN5bHntKnXptpBnfGi/V9RAPOJ9NBR9UrkOM36YYZs7FhXS7ExPpA6CuecVp28FS/qmHw4bOVw41wptftniYYJNYP8tGRNh15D64UihbUkX3HeeOR4U20JOmCS1E7NAJtMrpnF2UCxFVc0xSXHpBiptMYQ8ZWj+msaX1yTg==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01cea190-5452-442f-b744-08d887cef202
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Nov 2020 12:23:37.1339 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7jWawqZX5Yb0BfL0li71P8opwytiu3vShjQ4BkT8dgdBSVQFiZnn31UI85nXsOxKBJ1Ia14MU57GUHGNb44X8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4075
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.77.82 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.77.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 FORGED_SPF_HELO        No description available.
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kdYcH-001x96-6y
Subject: Re: [tipc-discussion] [net-next 2/3] tipc: make node number
 calculation reproducible
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
> +static inline u32 hash128to32(char *bytes)
> +{
> +	u32 *tmp = (u32 *)bytes;
> +	u32 res;
> +
> +	res = ntohl(tmp[0] ^ tmp[1] ^ tmp[2] ^ tmp[3]);
> +	if (likely(res))
> +		return res;
> +	res = tmp[0] | tmp[1] | tmp[2] | tmp[3];
> +	return !res ? 0 : ntohl(18140715);

In case that the hashed result is accidentally equal to the fix
number(ie, ntohl(18140715)), how would we be able to differentiate it
with the case where the hashed result is 0?

> +}


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
