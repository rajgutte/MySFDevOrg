<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>ExpenseReportNotification</fullName>
        <description>ExpenseReportNotification</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/ExpenseApprovalEmail</template>
    </alerts>
    <fieldUpdates>
        <fullName>UpdateStatusField</fullName>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>UpdateStatusField</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
</Workflow>
