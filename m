Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C6D416825
	for <lists+tipc-discussion@lfdr.de>; Fri, 24 Sep 2021 00:38:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mTXLp-0004ox-B6; Thu, 23 Sep 2021 22:37:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1mTXLk-0004oo-1E
 for tipc-discussion@lists.sourceforge.net; Thu, 23 Sep 2021 22:37:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vZ0zeqQtfnyNNFsMKmY5/LuWnXrZ94aCPlwX6T1som0=; b=FfllAWf7cf3/vhhR5Xn1+ALLQn
 FfLz20GvMHsSyo3eAZ67BiP2Kl4r7qCIEaNuMs7ELWlrTBHkVbF8Cb2EAkRnG1lkzKB2twapFX5aL
 uNAkhQRXjN55Tue4t7jW9u+FhbNItbkje71HIgp/sF1KZzl+yTUqSo0YNI6Yu3eSpyAY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vZ0zeqQtfnyNNFsMKmY5/LuWnXrZ94aCPlwX6T1som0=; b=eWstsyiPwZO3UuvkmWhygOg1iq
 VQ+srSP4Df7IBNacDZBKdk3oiUgxXdOdCTYkrK+G2MqUOL1KKCS+asB5iVRx/8YISrSNS1x+CHX9q
 pVzZXlVmfIb8uizoFK5Eufe1XA+FB+Vm57bql0xlyeAEH19oQObE+5GX8kW7WBo2+p7Y=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mTXLb-0001dZ-AV
 for tipc-discussion@lists.sourceforge.net; Thu, 23 Sep 2021 22:37:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1632436656;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vZ0zeqQtfnyNNFsMKmY5/LuWnXrZ94aCPlwX6T1som0=;
 b=jKuUHuS+8qRzqEtSmriyLH/QUZT5f9a3UXeux5ks0kq6LiHcLDfIwo3/E8vIYC+yNt3s6c
 +A+p3l8GXEX746EWpplJ3GiDmw26uiWL6u7QrOsQpj3mWLxUHOqvKNcyK2aHTmA/xdeCM9
 BcGWaj2/rmh8I7ehQD2/D9J8ZZygQmc=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-434--PG0SDjMPriwCxdSSR2LXg-1; Thu, 23 Sep 2021 18:37:34 -0400
X-MC-Unique: -PG0SDjMPriwCxdSSR2LXg-1
Received: by mail-qt1-f199.google.com with SMTP id
 l22-20020ac87b36000000b002a6c575f419so8612609qtu.23
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 23 Sep 2021 15:37:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=vZ0zeqQtfnyNNFsMKmY5/LuWnXrZ94aCPlwX6T1som0=;
 b=fNu0kWDujzvf1YciYhzsXRE3AvAnHFKyFRzg8GpXD61xciwEysGdKpUIJyvQ9+E0lz
 PYFwwzgiZoGykG6GSjJ9T1tfn68Hp6G43gowFqye2ZOsuSuwrfPK3W/ORHPyldnNbilU
 NHdFN4ebVItzwSifzpguJUr201aRk4EzZGXHGm6QrpJWHiEGY5YxcUoG02bhbhRIfKMh
 4Pdy0pXQa/3J9htsj4tpcjDvcPkvytyyFOvQai8wbKPd8biuBTPeEZL/eL9Kya2ofttg
 hIvySJ6GHoqmwoa0ZAk14IG952kjK6CJfo18YMXoEP4I1bksJ2Ko1gWj1VJskpP2AsTZ
 /8lg==
X-Gm-Message-State: AOAM5317a3tauN4aYoqqtWrg1TBgqR27DHm9Lvmnr7mOSwntRIuoTPQv
 ubPJCqHK23OMcs10JuGetnpCcdAGcsiqm2YyMle2dmIAzUVrpChpWpyN0ScuJi91JOFnUs+LffO
 ru9Uki/s9piHjWLUQqJfOGpjlOMkCff/z1G4j
X-Received: by 2002:a05:6214:2e4:: with SMTP id h4mr6818222qvu.3.1632436654375; 
 Thu, 23 Sep 2021 15:37:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxpGzyovV0Ju65avsrnd9iM4BeEApy8HBJdm0Q5Ym/sQbvZ6cen2fBN3QFvG8T5Rygy24fK3A==
X-Received: by 2002:a05:6214:2e4:: with SMTP id h4mr6818203qvu.3.1632436654058; 
 Thu, 23 Sep 2021 15:37:34 -0700 (PDT)
Received: from [192.168.0.106] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id z186sm5285626qke.59.2021.09.23.15.37.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Sep 2021 15:37:33 -0700 (PDT)
Message-ID: <e8dde916-a52b-47d1-fc80-c76b39d276cb@redhat.com>
Date: Thu, 23 Sep 2021 18:39:14 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
To: Andy Stec <Andy.Stec@infinite.com>,
 Hoang Huu Le <hoang.h.le@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
References: <PN0PR01MB552171C66C980DBF5421482496A39@PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM>
 <VE1PR05MB7327A129847B8C3E743FB009F1A39@VE1PR05MB7327.eurprd05.prod.outlook.com>
 <PN0PR01MB5521BE74A7FAAAB5F346FD1296A39@PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM>
 <VE1PR05MB7327AEE93DDBE9AC69498E16F1A39@VE1PR05MB7327.eurprd05.prod.outlook.com>
 <PN0PR01MB5521EF737846479C135A12DD96A39@PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <PN0PR01MB5521EF737846479C135A12DD96A39@PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.6 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 9/23/21 11:28, Andy Stec via tipc-discussion wrote: > The
 online documentation says that 'tipc node set address' command can be omitted
 starting with kernel 4.17. But it doesn't say that it should [...] 
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mTXLb-0001dZ-AV
Subject: Re: [tipc-discussion] Setting Node Address
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 9/23/21 11:28, Andy Stec via tipc-discussion wrote:
> The online documentation says that 'tipc node set address' command can be omitted starting with kernel 4.17.  But it doesn't say that it should be replaced with 'tipc node set identity'.  Based on that and based on my testing, it doesn't seem like those 2 commands produce the same results.
>
> From: Hoang Huu Le [mailto:hoang.h.le@dektech.com.au]
> Sent: Wednesday, September 22, 2021 11:37 PM
> To: Andy Stec <Andy.Stec@infinite.com>; tipc-discussion@lists.sourceforge.net
> Subject: RE: Setting Node Address
>
>
> From: Andy Stec <Andy.Stec@infinite.com<mailto:Andy.Stec@infinite.com>>
> Sent: Thursday, September 23, 2021 10:14 AM
> To: Hoang Huu Le <hoang.h.le@dektech.com.au<mailto:hoang.h.le@dektech.com.au>>; tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net>
> Subject: Re: Setting Node Address
>
> Which command is still supported, is it 'tipc node set address'?  I'm getting operation not permitted error when I use 'tipc node set address'.
> [Hoang] I don't know exactly in redhat 8, but in the upstream kernel (i.e v5.14.x) I'm able to use that one to set a node address.
>
> Does 'tipc node set identity' set the node address?
> [Hoang] Yuh, I think so. Please give a try on your node.
>
> Sorry about all these questions.  Needless to say I'm not a tipc expert.
> ________________________________
> From: Hoang Huu Le <hoang.h.le@dektech.com.au<mailto:hoang.h.le@dektech.com.au>>
> Sent: Wednesday, September 22, 2021 9:05 PM
> To: tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net> <tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net>>; tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net> <tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net>>
> Subject: Re: [tipc-discussion] Setting Node Address
>
> Let's use 'tipc node set identity' instead.
> However, that command is still support as legacy, this means you can continue using it in your application.
>
>> -----Original Message-----
>> From: Andy Stec via tipc-discussion <tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net>>
>> Sent: Thursday, September 23, 2021 8:16 AM
>> To: tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net>
>> Subject: [tipc-discussion] Setting Node Address
>>
>> We are porting an application from redhat 7 to redhat 8, that is from kernel 3.10 to kernel 4.18.  It appears that "tipc node set address"
>> command has been removed in kernel 4.17.  Is there another way of setting node address?  We are trying to limit the changes in the
>> application.
tipc node set address is still supported in all versions; it has only 
been removed from the help text.
I just made a quick test doing "tipc node set address 1.1.1" on 
RHEL-8.1.0, and it works like a charm.
If you get a failure with the above syntax you should file a bug report.
Which RHEL-8 version are you running?

///Jon
>>
>> _______________________________________________
>> tipc-discussion mailing list
>> tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net>
>> https://lists.sourceforge.net/lists/listinfo/tipc-discussion
>
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net>
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion
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
